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

@:headerClassCode("
  inline void set(String key, ::null value) { __string_hash_set(HX_MAP_THIS,key,value); }
  inline void set(String key, bool value) { __string_hash_set(HX_MAP_THIS,key,value); }
  inline void set(String key, char value) { __string_hash_set_int(HX_MAP_THIS,key,value); }
  inline void set(String key, unsigned char value) { __string_hash_set_int(HX_MAP_THIS,key,value); }
  inline void set(String key, signed char value) { __string_hash_set_int(HX_MAP_THIS,key,value); }
  inline void set(String key, short value) { __string_hash_set_int(HX_MAP_THIS,key,value); }
  inline void set(String key, unsigned short value) { __string_hash_set_int(HX_MAP_THIS,key,value); }
  inline void set(String key, int value) { __string_hash_set_int(HX_MAP_THIS,key,value); }
  inline void set(String key, unsigned int value) { __string_hash_set_int(HX_MAP_THIS,key,value); }
  inline void set(String key, float value) { __string_hash_set_float(HX_MAP_THIS,key,value); }
  inline void set(String key, double value) { __string_hash_set_float(HX_MAP_THIS,key,value); }
  inline void set(String key, ::String value) { __string_hash_set_string(HX_MAP_THIS,key,value); }
  inline void set(String key, cpp::Int64 value) { __string_hash_set_int64(HX_MAP_THIS,key,value); }

  template<typename V, typename H>
  inline void set(String key, const ::cpp::Struct<V,H> &value) {__string_hash_set(HX_MAP_THIS,key,value); }
  template<typename V>
  inline void set(String key, const ::cpp::Function<V> &value) {__string_hash_set(HX_MAP_THIS,key,(Dynamic)value ); }
  template<typename V>
  inline void set(String key, const ::cpp::Pointer<V> &value) {__string_hash_set(HX_MAP_THIS,key,(Dynamic)value ); }

  template<typename VALUE>
  inline void set(Dynamic &key, const VALUE &value) { set( (String)key, value ); }

  inline bool get_bool(String key) { return __string_hash_get_bool(h,key); }
  inline int get_int(String key) { return __string_hash_get_int(h,key); }
  inline Float get_float(String key) { return __string_hash_get_float(h,key); }
  inline String get_string(String key) { return __string_hash_get_string(h,key); }
  inline cpp::Int64 get_int64(String key) { return __string_hash_get_int64(h,key); }
")
@:coreApi class StringMap<T> implements haxe.Constraints.IMap<String, T> {
	@:ifFeature("haxe.ds.StringMap.*")
	private var h:Dynamic;

	public function new():Void {}

	public function set(key:String, value:T):Void {
		untyped __global__.__string_hash_set(__cpp__("HX_MAP_THIS"), key, value);
	}

	public function get(key:String):Null<T> {
		return untyped __global__.__string_hash_get(h, key);
	}

	public function exists(key:String):Bool {
		return untyped __global__.__string_hash_exists(h, key);
	}

	public function remove(key:String):Bool {
		return untyped __global__.__string_hash_remove(h, key);
	}

	public function keys():Iterator<String> {
		var a:Array<String> = untyped __global__.__string_hash_keys(h);
		return a.iterator();
	}

	public function iterator():Iterator<T> {
		var a:Array<Dynamic> = untyped __global__.__string_hash_values(h);
		return a.iterator();
	}

	@:runtime public inline function keyValueIterator():KeyValueIterator<String, T> {
		return new haxe.iterators.MapKeyValueIterator(this);
	}

	public function copy():StringMap<T> {
		var copied = new StringMap();
		for (key in keys())
			copied.set(key, get(key));
		return copied;
	}

	public function toString():String {
		return untyped __global__.__string_hash_to_string(h);
	}

	public function clear():Void {
		#if (hxcpp_api_level >= 400)
		return untyped __global__.__string_hash_clear(h);
		#else
		h = null;
		#end
	}

	#if (scriptable)
	private function setString(key:String, val:String):Void {
		untyped __string_hash_set_string(__cpp__("HX_MAP_THIS"), key, val);
	}

	private function setInt(key:String, val:Int):Void {
		untyped __string_hash_set_int(__cpp__("HX_MAP_THIS"), key, val);
	}

	private function setBool(key:String, val:Bool):Void {
		untyped __string_hash_set_int(__cpp__("HX_MAP_THIS"), key, val);
	}

	private function setFloat(key:String, val:Float):Void {
		untyped __string_hash_set_float(__cpp__("HX_MAP_THIS"), key, val);
	}

	private function setInt64(key:String, val:haxe.Int64):Void {
		untyped __string_hash_set_int64(__cpp__("HX_MAP_THIS"), key, val);
	}

	private function getString(key:String):String {
		return untyped __string_hash_get_string(h, key);
	}

	private function getInt(key:String):Int {
		return untyped __string_hash_get_int(h, key);
	}

	private function getBool(key:String):Bool {
		return untyped __string_hash_get_bool(h, key);
	}

	private function getFloat(key:String):Float {
		return untyped __string_hash_get_float(h, key);
	}

	private function getInt64(key:String):haxe.Int64 {
		return untyped __string_hash_get_int64(h, key);
	}
	#end
}
