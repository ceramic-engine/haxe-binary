/*
 * Copyright (C)2005-2019 Haxe Foundation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

package haxe.ds;

import cs.NativeArray;

@:coreApi class StringMap<T> implements haxe.Constraints.IMap<String, T> {
	extern private static inline var HASH_UPPER = 0.77;
	extern private static inline var FLAG_EMPTY = 0;
	extern private static inline var FLAG_DEL = 1;

	/**
	 * This is the most important structure here and the reason why it's so fast.
	 * It's an array of all the hashes contained in the table. These hashes cannot be 0 nor 1,
	 * which stand for "empty" and "deleted" states.
	 *
	 * The lookup algorithm will keep looking until a 0 or the key wanted is found;
	 * The insertion algorithm will do the same but will also break when FLAG_DEL is found;
	 */
	private var hashes:NativeArray<HashType>;

	private var _keys:NativeArray<String>;
	private var vals:NativeArray<T>;

	private var nBuckets:Int;
	private var size:Int;
	private var nOccupied:Int;
	private var upperBound:Int;

	#if !no_map_cache
	private var cachedKey:String;
	private var cachedIndex:Int;
	#end

	#if DEBUG_HASHTBL
	private var totalProbes:Int;
	private var probeTimes:Int;
	private var sameHash:Int;
	private var maxProbe:Int;
	#end

	public function new():Void {
		#if !no_map_cache
		cachedIndex = -1;
		#end
	}

	public function set(key:String, value:T):Void {
		var x:Int, k:Int;
		if (nOccupied >= upperBound) {
			if (nBuckets > (size << 1)) {
				resize(nBuckets - 1); // clear "deleted" elements
			} else {
				resize(nBuckets + 2);
			}
		}

		var hashes = hashes, keys = _keys, hashes = hashes;
		{
			var mask = (nBuckets == 0) ? 0 : nBuckets - 1;
			var site = x = nBuckets;
			k = hash(key);
			var i = k & mask, nProbes = 0;

			var delKey = -1;
			// to speed things up, don't loop if the first bucket is already free
			if (isEmpty(hashes[i])) {
				x = i;
			} else {
				var last = i, flag;
				while (!(isEmpty(flag = hashes[i]) || (flag == k && _keys[i] == key))) {
					if (isDel(flag) && delKey == -1) {
						delKey = i;
					}
					i = (i + ++nProbes) & mask;
					#if DEBUG_HASHTBL
					probeTimes++;
					if (i == last)
						throw "assert";
					#end
				}

				if (isEmpty(flag) && delKey != -1) {
					x = delKey;
				} else {
					x = i;
				}
			}

			#if DEBUG_HASHTBL
			if (nProbes > maxProbe)
				maxProbe = nProbes;
			totalProbes++;
			#end
		}

		var flag = hashes[x];
		if (isEmpty(flag)) {
			keys[x] = key;
			vals[x] = value;
			hashes[x] = k;
			size++;
			nOccupied++;
		} else if (isDel(flag)) {
			keys[x] = key;
			vals[x] = value;
			hashes[x] = k;
			size++;
		} else {
			assert(_keys[x] == key);
			vals[x] = value;
		}

		#if !no_map_cache
		cachedIndex = x;
		cachedKey = key;
		#end
	}

	private final function lookup(key:String):Int {
		if (nBuckets != 0) {
			var hashes = hashes, keys = _keys;

			var mask = nBuckets - 1, hash = hash(key), k = hash, nProbes = 0;
			var i = k & mask;
			var last = i, flag;
			// if we hit an empty bucket, it means we're done
			while (!isEmpty(flag = hashes[i]) && (isDel(flag) || flag != k || keys[i] != key)) {
				i = (i + ++nProbes) & mask;
				#if DEBUG_HASHTBL
				probeTimes++;
				if (i == last)
					throw "assert";
				#end
			}

			#if DEBUG_HASHTBL
			if (nProbes > maxProbe)
				maxProbe = nProbes;
			totalProbes++;
			#end
			return isEither(flag) ? -1 : i;
		}

		return -1;
	}

	final function resize(newNBuckets:Int):Void {
		// This function uses 0.25*n_bucktes bytes of working space instead of [sizeof(key_t+val_t)+.25]*n_buckets.
		var newHash = null;
		var j = 1;
		{
			newNBuckets = roundUp(newNBuckets);
			if (newNBuckets < 4)
				newNBuckets = 4;
			if (size >= (newNBuckets * HASH_UPPER + 0.5))
				/* requested size is too small */ {
				j = 0;
			} else { /* hash table size to be changed (shrink or expand); rehash */
				var nfSize = newNBuckets;
				newHash = new NativeArray(nfSize);
				if (nBuckets < newNBuckets) // expand
				{
					var k = new NativeArray(newNBuckets);
					if (_keys != null)
						arrayCopy(_keys, 0, k, 0, nBuckets);
					_keys = k;

					var v = new NativeArray(newNBuckets);
					if (vals != null)
						arrayCopy(vals, 0, v, 0, nBuckets);
					vals = v;
				} // otherwise shrink
			}
		}

		if (j != 0) { // rehashing is required
			// resetting cache
			#if !no_map_cache
			cachedKey = null;
			cachedIndex = -1;
			#end

			j = -1;
			var nBuckets = nBuckets,
				_keys = _keys,
				vals = vals,
				hashes = hashes;

			var newMask = newNBuckets - 1;
			while (++j < nBuckets) {
				var k;
				if (!isEither(k = hashes[j])) {
					var key = _keys[j];
					var val = vals[j];

					_keys[j] = null;
					vals[j] = cast null;
					hashes[j] = FLAG_DEL;
					while (true)
						/* kick-out process; sort of like in Cuckoo hashing */ {
						var nProbes = 0;
						var i = k & newMask;

						while (!isEmpty(newHash[i])) {
							i = (i + ++nProbes) & newMask;
						}

						newHash[i] = k;

						if (i < nBuckets && !isEither(k = hashes[i]))
							/* kick out the existing element */ {
							{ // inlined swap
								var tmp = _keys[i];
								_keys[i] = key;
								key = tmp;
							} { // inlined swap
								var tmp = vals[i];
								vals[i] = val;
								val = tmp;
							}

							hashes[i] = FLAG_DEL; /* mark it as deleted in the old hash table */
						} else { /* write the element and jump out of the loop */
							_keys[i] = key;
							vals[i] = val;
							break;
						}
					}
				}
			}

			if (nBuckets > newNBuckets)
				/* shrink the hash table */ {
				{ // inlined swap
					var k = new NativeArray(newNBuckets);
					arrayCopy(_keys, 0, k, 0, newNBuckets);
					this._keys = k;
				} { // inlined swap
					var v = new NativeArray(newNBuckets);
					arrayCopy(vals, 0, v, 0, newNBuckets);
					this.vals = v;
				}
			}

			this.hashes = newHash;
			this.nBuckets = newNBuckets;
			this.nOccupied = size;
			this.upperBound = Std.int(newNBuckets * HASH_UPPER + .5);
		}
	}

	public function get(key:String):Null<T> {
		var idx = -1;
		#if !no_map_cache
		if (cachedKey == key && ((idx = cachedIndex) != -1)) {
			return vals[idx];
		}
		#end
		idx = lookup(key);
		if (idx != -1) {
			#if !no_map_cache
			cachedKey = key;
			cachedIndex = idx;
			#end
			return vals[idx];
		}

		return null;
	}

	private function getDefault(key:String, def:T):T {
		var idx = -1;
		#if !no_map_cache
		if (cachedKey == key && ((idx = cachedIndex) != -1)) {
			return vals[idx];
		}
		#end

		idx = lookup(key);
		if (idx != -1) {
			#if !no_map_cache
			cachedKey = key;
			cachedIndex = idx;
			#end

			return vals[idx];
		}

		return def;
	}

	public function exists(key:String):Bool {
		var idx = -1;
		#if !no_map_cache
		if (cachedKey == key && ((idx = cachedIndex) != -1)) {
			return true;
		}
		#end

		idx = lookup(key);
		if (idx != -1) {
			#if !no_map_cache
			cachedKey = key;
			cachedIndex = idx;
			#end
			return true;
		}

		return false;
	}

	public function remove(key:String):Bool {
		var idx = -1;
		#if !no_map_cache
		if (!(cachedKey == key && ((idx = cachedIndex) != -1)))
		#end
		{
			idx = lookup(key);
		}

		if (idx == -1) {
			return false;
		} else {
			#if !no_map_cache
			if (cachedKey == key) {
				cachedIndex = -1;
			}
			#end
			hashes[idx] = FLAG_DEL;
			_keys[idx] = null;
			vals[idx] = null;
			--size;

			return true;
		}
	}

	public inline function keys():Iterator<String> {
		return new StringMapKeyIterator(this);
	}

	public inline function iterator():Iterator<T> {
		return new StringMapValueIterator(this);
	}

	@:runtime public inline function keyValueIterator():KeyValueIterator<String, T> {
		return new haxe.iterators.MapKeyValueIterator(this);
	}

	public function copy():StringMap<T> {
		var copied = new StringMap<T>();
		for (key in keys())
			copied.set(key, get(key));
		return copied;
	}

	public function toString():String {
		var s = new StringBuf();
		s.add("[");
		var it = keys();
		for (i in it) {
			s.add(i);
			s.add(" => ");
			s.add(Std.string(get(i)));
			if (it.hasNext())
				s.add(", ");
		}
		s.add("]");
		return s.toString();
	}

	public function clear():Void {
		hashes = null;
		_keys = null;
		vals = null;
		nBuckets = 0;
		size = 0;
		nOccupied = 0;
		upperBound = 0;
		#if !no_map_cache
		cachedKey = null;
		cachedIndex = -1;
		#end
		#if DEBUG_HASHTBL
		totalProbes = 0;
		probeTimes = 0;
		sameHash = 0;
		maxProbe = 0;
		#end
	}

	extern private static inline function roundUp(x:Int):Int {
		--x;
		x |= (x) >>> 1;
		x |= (x) >>> 2;
		x |= (x) >>> 4;
		x |= (x) >>> 8;
		x |= (x) >>> 16;
		return ++x;
	}

	extern private static inline function isEither(v:HashType):Bool
		return (v & 0xFFFFFFFE) == 0;

	extern private static inline function isEmpty(v:HashType):Bool
		return v == FLAG_EMPTY;

	extern private static inline function isDel(v:HashType):Bool
		return v == FLAG_DEL;

	// guarantee: Whatever this function is, it will never return 0 nor 1
	extern private static inline function hash(s:String):HashType {
		var k:Int = untyped s.GetHashCode();
		// k *= 357913941;
		// k ^= k << 24;
		// k += ~357913941;
		// k ^= k >> 31;
		// k ^= k << 31;

		k = (k + 0x7ed55d16) + (k << 12);
		k = (k ^ 0xc761c23c) ^ (k >> 19);
		k = (k + 0x165667b1) + (k << 5);
		k = (k + 0xd3a2646c) ^ (k << 9);
		k = (k + 0xfd7046c5) + (k << 3);
		k = (k ^ 0xb55a4f09) ^ (k >> 16);

		var ret = k;
		if (isEither(ret)) {
			if (ret == 0)
				ret = 2;
			else
				ret = 0xFFFFFFFF;
		}

		return ret;
	}

	extern private static inline function arrayCopy(sourceArray:cs.system.Array, sourceIndex:Int, destinationArray:cs.system.Array, destinationIndex:Int,
			length:Int):Void
		cs.system.Array.Copy(sourceArray, sourceIndex, destinationArray, destinationIndex, length);

	extern private static inline function assert(x:Bool):Void {
		#if DEBUG_HASHTBL
		if (!x)
			throw "assert failed";
		#end
	}
}

private typedef HashType = Int;

@:access(haxe.ds.StringMap)
private final class StringMapKeyIterator<T> {
	var m:StringMap<T>;
	var i:Int;
	var len:Int;

	public function new(m:StringMap<T>) {
		this.m = m;
		this.i = 0;
		this.len = m.nBuckets;
	}

	public function hasNext():Bool {
		for (j in i...len) {
			if (!StringMap.isEither(m.hashes[j])) {
				i = j;
				return true;
			}
		}
		return false;
	}

	public function next():String {
		var ret = m._keys[i];
		#if !no_map_cache
		m.cachedIndex = i;
		m.cachedKey = ret;
		#end
		i++;
		return ret;
	}
}

@:access(haxe.ds.StringMap)
private final class StringMapValueIterator<T> {
	var m:StringMap<T>;
	var i:Int;
	var len:Int;

	public function new(m:StringMap<T>) {
		this.m = m;
		this.i = 0;
		this.len = m.nBuckets;
	}

	public function hasNext():Bool {
		for (j in i...len) {
			if (!StringMap.isEither(m.hashes[j])) {
				i = j;
				return true;
			}
		}
		return false;
	}

	public inline function next():T {
		return m.vals[i++];
	}
}
