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

package cpp;

import haxe.Int64;

@:headerClassCode("
  inline void set(cpp::Int64 key, ::null value) { __int64_hash_set(HX_MAP_THIS,key,value); }
  inline void set(cpp::Int64 key, bool value) { __int64_hash_set(HX_MAP_THIS,key,value); }
  inline void set(cpp::Int64 key, char value) { __int64_hash_set_int(HX_MAP_THIS,key,value); }
  inline void set(cpp::Int64 key, unsigned char value) { __int64_hash_set_int(HX_MAP_THIS,key,value); }
  inline void set(cpp::Int64 key, signed char value) { __int64_hash_set_int(HX_MAP_THIS,key,value); }
  inline void set(cpp::Int64 key, short value) { __int64_hash_set_int(HX_MAP_THIS,key,value); }
  inline void set(cpp::Int64 key, unsigned short value) { __int64_hash_set_int(HX_MAP_THIS,key,value); }
  inline void set(cpp::Int64 key, int value) { __int64_hash_set_int(HX_MAP_THIS,key,value); }
  inline void set(cpp::Int64 key, unsigned int value) { __int64_hash_set_int(HX_MAP_THIS,key,value); }
  inline void set(cpp::Int64 key, float value) { __int64_hash_set_float(HX_MAP_THIS,key,value); }
  inline void set(cpp::Int64 key, double value) { __int64_hash_set_float(HX_MAP_THIS,key,value); }
  inline void set(cpp::Int64 key, ::String value) { __int64_hash_set_string(HX_MAP_THIS,key,value); }
  inline void set(cpp::Int64 key, cpp::Int64 value) { __int64_hash_set_int64(HX_MAP_THIS,key,value); }

  template<typename V, typename H>
  inline void set(cpp::Int64 key, const ::cpp::Struct<V,H> &value) {__int64_hash_set(HX_MAP_THIS,key,value); }
  template<typename F>
  inline void set(cpp::Int64 key, const ::cpp::Function<F> &value) {__int64_hash_set(HX_MAP_THIS,key,value); }
  template<typename V>
  inline void set(cpp::Int64 key, const ::cpp::Pointer<V> &value) {__int64_hash_set(HX_MAP_THIS,key,(Dynamic)value ); }

  template<typename VALUE>
  inline void set(Dynamic &key, const VALUE &value) { set( (cpp::Int64)key, value ); }

  inline bool get_bool(cpp::Int64 key) { return __int64_hash_get_bool(h,key); }
  inline int get_int(cpp::Int64 key) { return __int64_hash_get_int(h,key); }
  inline Float get_float(cpp::Int64 key) { return __int64_hash_get_float(h,key); }
  inline String get_string(cpp::Int64 key) { return __int64_hash_get_string(h,key); }
  inline cpp::Int64 get_int64(cpp::Int64 key) { return __int64_hash_get_int64(h,key); }
")
@:coreApi class Int64Map<T> implements haxe.Constraints.IMap<Int64, T> {
	@:ifFeature("cpp.Int64Map.*")
	private var h:Dynamic;

	public function new():Void {}

	public function set(key:Int64, value:T):Void {
		untyped __global__.__int64_hash_set(__cpp__("HX_MAP_THIS"), key, value);
	}

	public function get(key:Int64):Null<T> {
		return untyped __global__.__int64_hash_get(h, key);
	}

	public function exists(key:Int64):Bool {
		return untyped __global__.__int64_hash_exists(h, key);
	}

	public function remove(key:Int64):Bool {
		return untyped __global__.__int64_hash_remove(h, key);
	}

	public function keys():Iterator<Int64> {
		var a:Array<Int64> = untyped __global__.__int64_hash_keys(h);
		return a.iterator();
	}

	public function iterator():Iterator<T> {
		var a:Array<Dynamic> = untyped __global__.__int64_hash_values(h);
		return a.iterator();
	}

	@:runtime public inline function keyValueIterator():KeyValueIterator<Int64, T> {
		return new haxe.iterators.MapKeyValueIterator(this);
	}

	public function copy():Int64Map<T> {
		var copied = new Int64Map();
		for (key in keys())
			copied.set(key, get(key));
		return copied;
	}

	public function toString():String {
		return untyped __global__.__int64_hash_to_string(h);
	}

	public function clear():Void {
		#if (hxcpp_api_level >= 400)
		return untyped __global__.__int64_hash_clear(h);
		#else
		h = null;
		#end
	}

	#if (scriptable)
	private function setString(key:Int64, val:String):Void {
		untyped __int64_hash_set_string(__cpp__("HX_MAP_THIS"), key, val);
	}

	private function setInt(key:Int64, val:Int):Void {
		untyped __int64_hash_set_int(__cpp__("HX_MAP_THIS"), key, val);
	}

	private function setBool(key:Int64, val:Bool):Void {
		untyped __int64_hash_set_int(__cpp__("HX_MAP_THIS"), key, val);
	}

	private function setFloat(key:Int64, val:Float):Void {
		untyped __int64_hash_set_float(__cpp__("HX_MAP_THIS"), key, val);
	}

	private function setInt64(key:Int64, val:Int64):Void {
		untyped __int64_hash_set_int64(__cpp__("HX_MAP_THIS"), key, val);
	}

	private function getString(key:Int64):String {
		return untyped __int64_hash_get_string(h, key);
	}

	private function getInt(key:Int64):Int {
		return untyped __int64_hash_get_int(h, key);
	}

	private function getBool(key:Int64):Bool {
		return untyped __int64_hash_get_bool(h, key);
	}

	private function getFloat(key:Int64):Float {
		return untyped __int64_hash_get_float(h, key);
	}

	private function getInt64(key:Int64):Int64 {
		return untyped __int64_hash_get_int64(h, key);
	}
	#end
}
