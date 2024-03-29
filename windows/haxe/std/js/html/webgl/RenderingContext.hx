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

// This file is generated from mozilla\WebGLRenderingContext.webidl. Do not edit!

package js.html.webgl;

/**
	The `WebGLRenderingContext` interface provides the OpenGL ES 2.0 rendering context for the drawing surface of an HTML `canvas` element.

	Documentation [WebGLRenderingContext](https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext) by [Mozilla Contributors](https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext$history), licensed under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/).

	@see <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext>
**/
@:native("WebGLRenderingContext")
extern class RenderingContext {
	static inline var DEPTH_BUFFER_BIT : Int = 256;
	static inline var STENCIL_BUFFER_BIT : Int = 1024;
	static inline var COLOR_BUFFER_BIT : Int = 16384;
	static inline var POINTS : Int = 0;
	static inline var LINES : Int = 1;
	static inline var LINE_LOOP : Int = 2;
	static inline var LINE_STRIP : Int = 3;
	static inline var TRIANGLES : Int = 4;
	static inline var TRIANGLE_STRIP : Int = 5;
	static inline var TRIANGLE_FAN : Int = 6;
	static inline var ZERO : Int = 0;
	static inline var ONE : Int = 1;
	static inline var SRC_COLOR : Int = 768;
	static inline var ONE_MINUS_SRC_COLOR : Int = 769;
	static inline var SRC_ALPHA : Int = 770;
	static inline var ONE_MINUS_SRC_ALPHA : Int = 771;
	static inline var DST_ALPHA : Int = 772;
	static inline var ONE_MINUS_DST_ALPHA : Int = 773;
	static inline var DST_COLOR : Int = 774;
	static inline var ONE_MINUS_DST_COLOR : Int = 775;
	static inline var SRC_ALPHA_SATURATE : Int = 776;
	static inline var FUNC_ADD : Int = 32774;
	static inline var BLEND_EQUATION : Int = 32777;
	static inline var BLEND_EQUATION_RGB : Int = 32777;
	static inline var BLEND_EQUATION_ALPHA : Int = 34877;
	static inline var FUNC_SUBTRACT : Int = 32778;
	static inline var FUNC_REVERSE_SUBTRACT : Int = 32779;
	static inline var BLEND_DST_RGB : Int = 32968;
	static inline var BLEND_SRC_RGB : Int = 32969;
	static inline var BLEND_DST_ALPHA : Int = 32970;
	static inline var BLEND_SRC_ALPHA : Int = 32971;
	static inline var CONSTANT_COLOR : Int = 32769;
	static inline var ONE_MINUS_CONSTANT_COLOR : Int = 32770;
	static inline var CONSTANT_ALPHA : Int = 32771;
	static inline var ONE_MINUS_CONSTANT_ALPHA : Int = 32772;
	static inline var BLEND_COLOR : Int = 32773;
	static inline var ARRAY_BUFFER : Int = 34962;
	static inline var ELEMENT_ARRAY_BUFFER : Int = 34963;
	static inline var ARRAY_BUFFER_BINDING : Int = 34964;
	static inline var ELEMENT_ARRAY_BUFFER_BINDING : Int = 34965;
	static inline var STREAM_DRAW : Int = 35040;
	static inline var STATIC_DRAW : Int = 35044;
	static inline var DYNAMIC_DRAW : Int = 35048;
	static inline var BUFFER_SIZE : Int = 34660;
	static inline var BUFFER_USAGE : Int = 34661;
	static inline var CURRENT_VERTEX_ATTRIB : Int = 34342;
	static inline var FRONT : Int = 1028;
	static inline var BACK : Int = 1029;
	static inline var FRONT_AND_BACK : Int = 1032;
	static inline var CULL_FACE : Int = 2884;
	static inline var BLEND : Int = 3042;
	static inline var DITHER : Int = 3024;
	static inline var STENCIL_TEST : Int = 2960;
	static inline var DEPTH_TEST : Int = 2929;
	static inline var SCISSOR_TEST : Int = 3089;
	static inline var POLYGON_OFFSET_FILL : Int = 32823;
	static inline var SAMPLE_ALPHA_TO_COVERAGE : Int = 32926;
	static inline var SAMPLE_COVERAGE : Int = 32928;
	static inline var NO_ERROR : Int = 0;
	static inline var INVALID_ENUM : Int = 1280;
	static inline var INVALID_VALUE : Int = 1281;
	static inline var INVALID_OPERATION : Int = 1282;
	static inline var OUT_OF_MEMORY : Int = 1285;
	static inline var CW : Int = 2304;
	static inline var CCW : Int = 2305;
	static inline var LINE_WIDTH : Int = 2849;
	static inline var ALIASED_POINT_SIZE_RANGE : Int = 33901;
	static inline var ALIASED_LINE_WIDTH_RANGE : Int = 33902;
	static inline var CULL_FACE_MODE : Int = 2885;
	static inline var FRONT_FACE : Int = 2886;
	static inline var DEPTH_RANGE : Int = 2928;
	static inline var DEPTH_WRITEMASK : Int = 2930;
	static inline var DEPTH_CLEAR_VALUE : Int = 2931;
	static inline var DEPTH_FUNC : Int = 2932;
	static inline var STENCIL_CLEAR_VALUE : Int = 2961;
	static inline var STENCIL_FUNC : Int = 2962;
	static inline var STENCIL_FAIL : Int = 2964;
	static inline var STENCIL_PASS_DEPTH_FAIL : Int = 2965;
	static inline var STENCIL_PASS_DEPTH_PASS : Int = 2966;
	static inline var STENCIL_REF : Int = 2967;
	static inline var STENCIL_VALUE_MASK : Int = 2963;
	static inline var STENCIL_WRITEMASK : Int = 2968;
	static inline var STENCIL_BACK_FUNC : Int = 34816;
	static inline var STENCIL_BACK_FAIL : Int = 34817;
	static inline var STENCIL_BACK_PASS_DEPTH_FAIL : Int = 34818;
	static inline var STENCIL_BACK_PASS_DEPTH_PASS : Int = 34819;
	static inline var STENCIL_BACK_REF : Int = 36003;
	static inline var STENCIL_BACK_VALUE_MASK : Int = 36004;
	static inline var STENCIL_BACK_WRITEMASK : Int = 36005;
	static inline var VIEWPORT : Int = 2978;
	static inline var SCISSOR_BOX : Int = 3088;
	static inline var COLOR_CLEAR_VALUE : Int = 3106;
	static inline var COLOR_WRITEMASK : Int = 3107;
	static inline var UNPACK_ALIGNMENT : Int = 3317;
	static inline var PACK_ALIGNMENT : Int = 3333;
	static inline var MAX_TEXTURE_SIZE : Int = 3379;
	static inline var MAX_VIEWPORT_DIMS : Int = 3386;
	static inline var SUBPIXEL_BITS : Int = 3408;
	static inline var RED_BITS : Int = 3410;
	static inline var GREEN_BITS : Int = 3411;
	static inline var BLUE_BITS : Int = 3412;
	static inline var ALPHA_BITS : Int = 3413;
	static inline var DEPTH_BITS : Int = 3414;
	static inline var STENCIL_BITS : Int = 3415;
	static inline var POLYGON_OFFSET_UNITS : Int = 10752;
	static inline var POLYGON_OFFSET_FACTOR : Int = 32824;
	static inline var TEXTURE_BINDING_2D : Int = 32873;
	static inline var SAMPLE_BUFFERS : Int = 32936;
	static inline var SAMPLES : Int = 32937;
	static inline var SAMPLE_COVERAGE_VALUE : Int = 32938;
	static inline var SAMPLE_COVERAGE_INVERT : Int = 32939;
	static inline var COMPRESSED_TEXTURE_FORMATS : Int = 34467;
	static inline var DONT_CARE : Int = 4352;
	static inline var FASTEST : Int = 4353;
	static inline var NICEST : Int = 4354;
	static inline var GENERATE_MIPMAP_HINT : Int = 33170;
	static inline var BYTE : Int = 5120;
	static inline var UNSIGNED_BYTE : Int = 5121;
	static inline var SHORT : Int = 5122;
	static inline var UNSIGNED_SHORT : Int = 5123;
	static inline var INT : Int = 5124;
	static inline var UNSIGNED_INT : Int = 5125;
	static inline var FLOAT : Int = 5126;
	static inline var DEPTH_COMPONENT : Int = 6402;
	static inline var ALPHA : Int = 6406;
	static inline var RGB : Int = 6407;
	static inline var RGBA : Int = 6408;
	static inline var LUMINANCE : Int = 6409;
	static inline var LUMINANCE_ALPHA : Int = 6410;
	static inline var UNSIGNED_SHORT_4_4_4_4 : Int = 32819;
	static inline var UNSIGNED_SHORT_5_5_5_1 : Int = 32820;
	static inline var UNSIGNED_SHORT_5_6_5 : Int = 33635;
	static inline var FRAGMENT_SHADER : Int = 35632;
	static inline var VERTEX_SHADER : Int = 35633;
	static inline var MAX_VERTEX_ATTRIBS : Int = 34921;
	static inline var MAX_VERTEX_UNIFORM_VECTORS : Int = 36347;
	static inline var MAX_VARYING_VECTORS : Int = 36348;
	static inline var MAX_COMBINED_TEXTURE_IMAGE_UNITS : Int = 35661;
	static inline var MAX_VERTEX_TEXTURE_IMAGE_UNITS : Int = 35660;
	static inline var MAX_TEXTURE_IMAGE_UNITS : Int = 34930;
	static inline var MAX_FRAGMENT_UNIFORM_VECTORS : Int = 36349;
	static inline var SHADER_TYPE : Int = 35663;
	static inline var DELETE_STATUS : Int = 35712;
	static inline var LINK_STATUS : Int = 35714;
	static inline var VALIDATE_STATUS : Int = 35715;
	static inline var ATTACHED_SHADERS : Int = 35717;
	static inline var ACTIVE_UNIFORMS : Int = 35718;
	static inline var ACTIVE_ATTRIBUTES : Int = 35721;
	static inline var SHADING_LANGUAGE_VERSION : Int = 35724;
	static inline var CURRENT_PROGRAM : Int = 35725;
	static inline var NEVER : Int = 512;
	static inline var LESS : Int = 513;
	static inline var EQUAL : Int = 514;
	static inline var LEQUAL : Int = 515;
	static inline var GREATER : Int = 516;
	static inline var NOTEQUAL : Int = 517;
	static inline var GEQUAL : Int = 518;
	static inline var ALWAYS : Int = 519;
	static inline var KEEP : Int = 7680;
	static inline var REPLACE : Int = 7681;
	static inline var INCR : Int = 7682;
	static inline var DECR : Int = 7683;
	static inline var INVERT : Int = 5386;
	static inline var INCR_WRAP : Int = 34055;
	static inline var DECR_WRAP : Int = 34056;
	static inline var VENDOR : Int = 7936;
	static inline var RENDERER : Int = 7937;
	static inline var VERSION : Int = 7938;
	static inline var NEAREST : Int = 9728;
	static inline var LINEAR : Int = 9729;
	static inline var NEAREST_MIPMAP_NEAREST : Int = 9984;
	static inline var LINEAR_MIPMAP_NEAREST : Int = 9985;
	static inline var NEAREST_MIPMAP_LINEAR : Int = 9986;
	static inline var LINEAR_MIPMAP_LINEAR : Int = 9987;
	static inline var TEXTURE_MAG_FILTER : Int = 10240;
	static inline var TEXTURE_MIN_FILTER : Int = 10241;
	static inline var TEXTURE_WRAP_S : Int = 10242;
	static inline var TEXTURE_WRAP_T : Int = 10243;
	static inline var TEXTURE_2D : Int = 3553;
	static inline var TEXTURE : Int = 5890;
	static inline var TEXTURE_CUBE_MAP : Int = 34067;
	static inline var TEXTURE_BINDING_CUBE_MAP : Int = 34068;
	static inline var TEXTURE_CUBE_MAP_POSITIVE_X : Int = 34069;
	static inline var TEXTURE_CUBE_MAP_NEGATIVE_X : Int = 34070;
	static inline var TEXTURE_CUBE_MAP_POSITIVE_Y : Int = 34071;
	static inline var TEXTURE_CUBE_MAP_NEGATIVE_Y : Int = 34072;
	static inline var TEXTURE_CUBE_MAP_POSITIVE_Z : Int = 34073;
	static inline var TEXTURE_CUBE_MAP_NEGATIVE_Z : Int = 34074;
	static inline var MAX_CUBE_MAP_TEXTURE_SIZE : Int = 34076;
	static inline var TEXTURE0 : Int = 33984;
	static inline var TEXTURE1 : Int = 33985;
	static inline var TEXTURE2 : Int = 33986;
	static inline var TEXTURE3 : Int = 33987;
	static inline var TEXTURE4 : Int = 33988;
	static inline var TEXTURE5 : Int = 33989;
	static inline var TEXTURE6 : Int = 33990;
	static inline var TEXTURE7 : Int = 33991;
	static inline var TEXTURE8 : Int = 33992;
	static inline var TEXTURE9 : Int = 33993;
	static inline var TEXTURE10 : Int = 33994;
	static inline var TEXTURE11 : Int = 33995;
	static inline var TEXTURE12 : Int = 33996;
	static inline var TEXTURE13 : Int = 33997;
	static inline var TEXTURE14 : Int = 33998;
	static inline var TEXTURE15 : Int = 33999;
	static inline var TEXTURE16 : Int = 34000;
	static inline var TEXTURE17 : Int = 34001;
	static inline var TEXTURE18 : Int = 34002;
	static inline var TEXTURE19 : Int = 34003;
	static inline var TEXTURE20 : Int = 34004;
	static inline var TEXTURE21 : Int = 34005;
	static inline var TEXTURE22 : Int = 34006;
	static inline var TEXTURE23 : Int = 34007;
	static inline var TEXTURE24 : Int = 34008;
	static inline var TEXTURE25 : Int = 34009;
	static inline var TEXTURE26 : Int = 34010;
	static inline var TEXTURE27 : Int = 34011;
	static inline var TEXTURE28 : Int = 34012;
	static inline var TEXTURE29 : Int = 34013;
	static inline var TEXTURE30 : Int = 34014;
	static inline var TEXTURE31 : Int = 34015;
	static inline var ACTIVE_TEXTURE : Int = 34016;
	static inline var REPEAT : Int = 10497;
	static inline var CLAMP_TO_EDGE : Int = 33071;
	static inline var MIRRORED_REPEAT : Int = 33648;
	static inline var FLOAT_VEC2 : Int = 35664;
	static inline var FLOAT_VEC3 : Int = 35665;
	static inline var FLOAT_VEC4 : Int = 35666;
	static inline var INT_VEC2 : Int = 35667;
	static inline var INT_VEC3 : Int = 35668;
	static inline var INT_VEC4 : Int = 35669;
	static inline var BOOL : Int = 35670;
	static inline var BOOL_VEC2 : Int = 35671;
	static inline var BOOL_VEC3 : Int = 35672;
	static inline var BOOL_VEC4 : Int = 35673;
	static inline var FLOAT_MAT2 : Int = 35674;
	static inline var FLOAT_MAT3 : Int = 35675;
	static inline var FLOAT_MAT4 : Int = 35676;
	static inline var SAMPLER_2D : Int = 35678;
	static inline var SAMPLER_CUBE : Int = 35680;
	static inline var VERTEX_ATTRIB_ARRAY_ENABLED : Int = 34338;
	static inline var VERTEX_ATTRIB_ARRAY_SIZE : Int = 34339;
	static inline var VERTEX_ATTRIB_ARRAY_STRIDE : Int = 34340;
	static inline var VERTEX_ATTRIB_ARRAY_TYPE : Int = 34341;
	static inline var VERTEX_ATTRIB_ARRAY_NORMALIZED : Int = 34922;
	static inline var VERTEX_ATTRIB_ARRAY_POINTER : Int = 34373;
	static inline var VERTEX_ATTRIB_ARRAY_BUFFER_BINDING : Int = 34975;
	static inline var IMPLEMENTATION_COLOR_READ_TYPE : Int = 35738;
	static inline var IMPLEMENTATION_COLOR_READ_FORMAT : Int = 35739;
	static inline var COMPILE_STATUS : Int = 35713;
	static inline var LOW_FLOAT : Int = 36336;
	static inline var MEDIUM_FLOAT : Int = 36337;
	static inline var HIGH_FLOAT : Int = 36338;
	static inline var LOW_INT : Int = 36339;
	static inline var MEDIUM_INT : Int = 36340;
	static inline var HIGH_INT : Int = 36341;
	static inline var FRAMEBUFFER : Int = 36160;
	static inline var RENDERBUFFER : Int = 36161;
	static inline var RGBA4 : Int = 32854;
	static inline var RGB5_A1 : Int = 32855;
	static inline var RGB565 : Int = 36194;
	static inline var DEPTH_COMPONENT16 : Int = 33189;
	static inline var STENCIL_INDEX8 : Int = 36168;
	static inline var DEPTH_STENCIL : Int = 34041;
	static inline var RENDERBUFFER_WIDTH : Int = 36162;
	static inline var RENDERBUFFER_HEIGHT : Int = 36163;
	static inline var RENDERBUFFER_INTERNAL_FORMAT : Int = 36164;
	static inline var RENDERBUFFER_RED_SIZE : Int = 36176;
	static inline var RENDERBUFFER_GREEN_SIZE : Int = 36177;
	static inline var RENDERBUFFER_BLUE_SIZE : Int = 36178;
	static inline var RENDERBUFFER_ALPHA_SIZE : Int = 36179;
	static inline var RENDERBUFFER_DEPTH_SIZE : Int = 36180;
	static inline var RENDERBUFFER_STENCIL_SIZE : Int = 36181;
	static inline var FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE : Int = 36048;
	static inline var FRAMEBUFFER_ATTACHMENT_OBJECT_NAME : Int = 36049;
	static inline var FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL : Int = 36050;
	static inline var FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE : Int = 36051;
	static inline var COLOR_ATTACHMENT0 : Int = 36064;
	static inline var DEPTH_ATTACHMENT : Int = 36096;
	static inline var STENCIL_ATTACHMENT : Int = 36128;
	static inline var DEPTH_STENCIL_ATTACHMENT : Int = 33306;
	static inline var NONE : Int = 0;
	static inline var FRAMEBUFFER_COMPLETE : Int = 36053;
	static inline var FRAMEBUFFER_INCOMPLETE_ATTACHMENT : Int = 36054;
	static inline var FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT : Int = 36055;
	static inline var FRAMEBUFFER_INCOMPLETE_DIMENSIONS : Int = 36057;
	static inline var FRAMEBUFFER_UNSUPPORTED : Int = 36061;
	static inline var FRAMEBUFFER_BINDING : Int = 36006;
	static inline var RENDERBUFFER_BINDING : Int = 36007;
	static inline var MAX_RENDERBUFFER_SIZE : Int = 34024;
	static inline var INVALID_FRAMEBUFFER_OPERATION : Int = 1286;
	static inline var UNPACK_FLIP_Y_WEBGL : Int = 37440;
	static inline var UNPACK_PREMULTIPLY_ALPHA_WEBGL : Int = 37441;
	static inline var CONTEXT_LOST_WEBGL : Int = 37442;
	static inline var UNPACK_COLORSPACE_CONVERSION_WEBGL : Int = 37443;
	static inline var BROWSER_DEFAULT_WEBGL : Int = 37444;
	
	
	/**
		A read-only back-reference to the `HTMLCanvasElement`. Might be `null` if it is not associated with a `canvas` element.
	**/
	var canvas(default,null) : js.html.CanvasElement;
	
	/**
		The read-only width of the current drawing buffer. Should match the width of the canvas element associated with this context.
	**/
	var drawingBufferWidth(default,null) : Int;
	
	/**
		The read-only height of the current drawing buffer. Should match the height of the canvas element associated with this context.
	**/
	var drawingBufferHeight(default,null) : Int;
	
	
	/**
		Updates buffer data.
	**/
	@:overload( function( target : Int, size : Int, usage : Int ) : Void {} )
	@:overload( function( target : Int, data : js.lib.ArrayBuffer, usage : Int ) : Void {} )
	function bufferData( target : Int, data : js.lib.ArrayBufferView, usage : Int ) : Void;
	
	/**
		Updates buffer data starting at a passed offset.
	**/
	@:overload( function( target : Int, offset : Int, data : js.lib.ArrayBuffer ) : Void {} )
	function bufferSubData( target : Int, offset : Int, data : js.lib.ArrayBufferView ) : Void;
	
	/**
		Specifies a 2D texture image in a compressed format.
	**/
	function compressedTexImage2D( target : Int, level : Int, internalformat : Int, width : Int, height : Int, border : Int, data : js.lib.ArrayBufferView ) : Void;
	
	/**
		Specifies a 2D texture sub-image in a compressed format.
	**/
	function compressedTexSubImage2D( target : Int, level : Int, xoffset : Int, yoffset : Int, width : Int, height : Int, format : Int, data : js.lib.ArrayBufferView ) : Void;
	
	/**
		Reads a block of pixels from the `WebGLFrameBuffer`.
		@throws DOMError
	**/
	function readPixels( x : Int, y : Int, width : Int, height : Int, format : Int, type : Int, pixels : js.lib.ArrayBufferView ) : Void;
	
	/**
		Specifies a 2D texture image.
		@throws DOMError
	**/
	@:overload( function( target : Int, level : Int, internalformat : Int, width : Int, height : Int, border : Int, format : Int, type : Int, pixels : js.lib.ArrayBufferView ) : Void {} )
	@:overload( function( target : Int, level : Int, internalformat : Int, format : Int, type : Int, pixels : js.html.ImageBitmap ) : Void {} )
	@:overload( function( target : Int, level : Int, internalformat : Int, format : Int, type : Int, pixels : js.html.ImageData ) : Void {} )
	@:overload( function( target : Int, level : Int, internalformat : Int, format : Int, type : Int, image : js.html.ImageElement ) : Void {} )
	@:overload( function( target : Int, level : Int, internalformat : Int, format : Int, type : Int, canvas : js.html.CanvasElement ) : Void {} )
	function texImage2D( target : Int, level : Int, internalformat : Int, format : Int, type : Int, video : js.html.VideoElement ) : Void;
	
	/**
		Updates a sub-rectangle of the current `WebGLTexture`.
		@throws DOMError
	**/
	@:overload( function( target : Int, level : Int, xoffset : Int, yoffset : Int, width : Int, height : Int, format : Int, type : Int, pixels : js.lib.ArrayBufferView ) : Void {} )
	@:overload( function( target : Int, level : Int, xoffset : Int, yoffset : Int, format : Int, type : Int, pixels : js.html.ImageBitmap ) : Void {} )
	@:overload( function( target : Int, level : Int, xoffset : Int, yoffset : Int, format : Int, type : Int, pixels : js.html.ImageData ) : Void {} )
	@:overload( function( target : Int, level : Int, xoffset : Int, yoffset : Int, format : Int, type : Int, image : js.html.ImageElement ) : Void {} )
	@:overload( function( target : Int, level : Int, xoffset : Int, yoffset : Int, format : Int, type : Int, canvas : js.html.CanvasElement ) : Void {} )
	function texSubImage2D( target : Int, level : Int, xoffset : Int, yoffset : Int, format : Int, type : Int, video : js.html.VideoElement ) : Void;
	@:overload( function( location : UniformLocation, data : Array<Float>) : Void {} )
	function uniform1fv( location : UniformLocation, data : js.lib.Float32Array ) : Void;
	@:overload( function( location : UniformLocation, data : Array<Float>) : Void {} )
	function uniform2fv( location : UniformLocation, data : js.lib.Float32Array ) : Void;
	@:overload( function( location : UniformLocation, data : Array<Float>) : Void {} )
	function uniform3fv( location : UniformLocation, data : js.lib.Float32Array ) : Void;
	@:overload( function( location : UniformLocation, data : Array<Float>) : Void {} )
	function uniform4fv( location : UniformLocation, data : js.lib.Float32Array ) : Void;
	@:overload( function( location : UniformLocation, data : Array<Int>) : Void {} )
	function uniform1iv( location : UniformLocation, data : js.lib.Int32Array ) : Void;
	@:overload( function( location : UniformLocation, data : Array<Int>) : Void {} )
	function uniform2iv( location : UniformLocation, data : js.lib.Int32Array ) : Void;
	@:overload( function( location : UniformLocation, data : Array<Int>) : Void {} )
	function uniform3iv( location : UniformLocation, data : js.lib.Int32Array ) : Void;
	@:overload( function( location : UniformLocation, data : Array<Int>) : Void {} )
	function uniform4iv( location : UniformLocation, data : js.lib.Int32Array ) : Void;
	@:overload( function( location : UniformLocation, transpose : Bool, data : Array<Float>) : Void {} )
	function uniformMatrix2fv( location : UniformLocation, transpose : Bool, data : js.lib.Float32Array ) : Void;
	@:overload( function( location : UniformLocation, transpose : Bool, data : Array<Float>) : Void {} )
	function uniformMatrix3fv( location : UniformLocation, transpose : Bool, data : js.lib.Float32Array ) : Void;
	@:overload( function( location : UniformLocation, transpose : Bool, data : Array<Float>) : Void {} )
	function uniformMatrix4fv( location : UniformLocation, transpose : Bool, data : js.lib.Float32Array ) : Void;
	
	/**
		Returns a `WebGLContextAttributes` object that contains the actual context parameters. Might return `null`, if the context is lost.
	**/
	function getContextAttributes() : ContextAttributes;
	
	/**
		Returns `true` if the context is lost, otherwise returns `false`.
	**/
	function isContextLost() : Bool;
	
	/**
		Returns an `Array` of `DOMString` elements with all the supported WebGL extensions.
	**/
	function getSupportedExtensions() : Array<String>;
	
	/**
		Returns an extension object.
		@throws DOMError
	**/
	function getExtension<T>( name : Extension<T> ) : T;
	
	/**
		Selects the active texture unit.
	**/
	function activeTexture( texture : Int ) : Void;
	
	/**
		Attaches a `WebGLShader` to a `WebGLProgram`.
	**/
	function attachShader( program : Program, shader : Shader ) : Void;
	
	/**
		Binds a generic vertex index to a named attribute variable.
	**/
	function bindAttribLocation( program : Program, index : Int, name : String ) : Void;
	
	/**
		Binds a `WebGLBuffer` object to a given target.
	**/
	function bindBuffer( target : Int, buffer : Buffer ) : Void;
	
	/**
		Binds a `WebGLFrameBuffer` object to a given target.
	**/
	function bindFramebuffer( target : Int, framebuffer : Framebuffer ) : Void;
	
	/**
		Binds a `WebGLRenderBuffer` object to a given target.
	**/
	function bindRenderbuffer( target : Int, renderbuffer : Renderbuffer ) : Void;
	
	/**
		Binds a `WebGLTexture` object to a given target.
	**/
	function bindTexture( target : Int, texture : Texture ) : Void;
	
	/**
		Sets the source and destination blending factors.
	**/
	function blendColor( red : Float, green : Float, blue : Float, alpha : Float ) : Void;
	
	/**
		Sets both the RGB blend equation and alpha blend equation to a single equation.
	**/
	function blendEquation( mode : Int ) : Void;
	
	/**
		Sets the RGB blend equation and alpha blend equation separately.
	**/
	function blendEquationSeparate( modeRGB : Int, modeAlpha : Int ) : Void;
	
	/**
		Defines which function is used for blending pixel arithmetic.
	**/
	function blendFunc( sfactor : Int, dfactor : Int ) : Void;
	
	/**
		Defines which function is used for blending pixel arithmetic for RGB and alpha components separately.
	**/
	function blendFuncSeparate( srcRGB : Int, dstRGB : Int, srcAlpha : Int, dstAlpha : Int ) : Void;
	
	/**
		Returns the status of the framebuffer.
	**/
	function checkFramebufferStatus( target : Int ) : Int;
	
	/**
		Clears specified buffers to preset values.
	**/
	function clear( mask : Int ) : Void;
	
	/**
		Specifies the color values used when clearing color buffers.
	**/
	function clearColor( red : Float, green : Float, blue : Float, alpha : Float ) : Void;
	
	/**
		Specifies the depth value used when clearing the depth buffer.
	**/
	function clearDepth( depth : Float ) : Void;
	
	/**
		Specifies the stencil value used when clearing the stencil buffer.
	**/
	function clearStencil( s : Int ) : Void;
	
	/**
		Sets which color components to enable or to disable when drawing or rendering to a `WebGLFramebuffer`.
	**/
	function colorMask( red : Bool, green : Bool, blue : Bool, alpha : Bool ) : Void;
	
	/**
		Compiles a `WebGLShader`.
	**/
	function compileShader( shader : Shader ) : Void;
	
	/**
		Copies a 2D texture image.
	**/
	function copyTexImage2D( target : Int, level : Int, internalformat : Int, x : Int, y : Int, width : Int, height : Int, border : Int ) : Void;
	
	/**
		Copies a 2D texture sub-image.
	**/
	function copyTexSubImage2D( target : Int, level : Int, xoffset : Int, yoffset : Int, x : Int, y : Int, width : Int, height : Int ) : Void;
	
	/**
		Creates a `WebGLBuffer` object.
	**/
	function createBuffer() : Buffer;
	
	/**
		Creates a `WebGLFrameBuffer` object.
	**/
	function createFramebuffer() : Framebuffer;
	
	/**
		Creates a `WebGLProgram`.
	**/
	function createProgram() : Program;
	
	/**
		Creates a `WebGLRenderBuffer` object.
	**/
	function createRenderbuffer() : Renderbuffer;
	
	/**
		Creates a `WebGLShader`.
	**/
	function createShader( type : Int ) : Shader;
	
	/**
		Creates a `WebGLTexture` object.
	**/
	function createTexture() : Texture;
	
	/**
		Specifies whether or not front- and/or back-facing polygons can be culled.
	**/
	function cullFace( mode : Int ) : Void;
	
	/**
		Deletes a `WebGLBuffer` object.
	**/
	function deleteBuffer( buffer : Buffer ) : Void;
	
	/**
		Deletes a `WebGLFrameBuffer` object.
	**/
	function deleteFramebuffer( framebuffer : Framebuffer ) : Void;
	
	/**
		Deletes a `WebGLProgram`.
	**/
	function deleteProgram( program : Program ) : Void;
	
	/**
		Deletes a `WebGLRenderBuffer` object.
	**/
	function deleteRenderbuffer( renderbuffer : Renderbuffer ) : Void;
	
	/**
		Deletes a `WebGLShader`.
	**/
	function deleteShader( shader : Shader ) : Void;
	
	/**
		Deletes a `WebGLTexture` object.
	**/
	function deleteTexture( texture : Texture ) : Void;
	
	/**
		Specifies a function that compares incoming pixel depth to the current depth buffer value.
	**/
	function depthFunc( func : Int ) : Void;
	
	/**
		Sets whether writing into the depth buffer is enabled or disabled.
	**/
	function depthMask( flag : Bool ) : Void;
	
	/**
		Specifies the depth range mapping from normalized device coordinates to window or viewport coordinates.
	**/
	function depthRange( zNear : Float, zFar : Float ) : Void;
	
	/**
		Detaches a `WebGLShader`.
	**/
	function detachShader( program : Program, shader : Shader ) : Void;
	
	/**
		Disables specific WebGL capabilities for this context.
	**/
	function disable( cap : Int ) : Void;
	
	/**
		Disables a vertex attribute array at a given position.
	**/
	function disableVertexAttribArray( index : Int ) : Void;
	
	/**
		Renders primitives from array data.
	**/
	function drawArrays( mode : Int, first : Int, count : Int ) : Void;
	
	/**
		Renders primitives from element array data.
	**/
	function drawElements( mode : Int, count : Int, type : Int, offset : Int ) : Void;
	
	/**
		Enables specific WebGL capabilities for this context.
	**/
	function enable( cap : Int ) : Void;
	
	/**
		Enables a vertex attribute array at a given position.
	**/
	function enableVertexAttribArray( index : Int ) : Void;
	
	/**
		Blocks execution until all previously called commands are finished.
	**/
	function finish() : Void;
	
	/**
		Empties different buffer commands, causing all commands to be executed as quickly as possible.
	**/
	function flush() : Void;
	
	/**
		Attaches a `WebGLRenderingBuffer` object to a `WebGLFrameBuffer` object.
	**/
	function framebufferRenderbuffer( target : Int, attachment : Int, renderbuffertarget : Int, renderbuffer : Renderbuffer ) : Void;
	
	/**
		Attaches a textures image to a `WebGLFrameBuffer` object.
	**/
	function framebufferTexture2D( target : Int, attachment : Int, textarget : Int, texture : Texture, level : Int ) : Void;
	
	/**
		Specifies whether polygons are front- or back-facing by setting a winding orientation.
	**/
	function frontFace( mode : Int ) : Void;
	
	/**
		Generates a set of mipmaps for a `WebGLTexture` object.
	**/
	function generateMipmap( target : Int ) : Void;
	
	/**
		Returns information about an active attribute variable.
	**/
	function getActiveAttrib( program : Program, index : Int ) : ActiveInfo;
	
	/**
		Returns information about an active uniform variable.
	**/
	function getActiveUniform( program : Program, index : Int ) : ActiveInfo;
	
	/**
		Returns a list of `WebGLShader` objects attached to a `WebGLProgram`.
	**/
	function getAttachedShaders( program : Program ) : Array<Shader>;
	
	/**
		Returns the location of an attribute variable.
	**/
	function getAttribLocation( program : Program, name : String ) : Int;
	
	/**
		Returns information about the buffer.
	**/
	function getBufferParameter( target : Int, pname : Int ) : Dynamic;
	
	/**
		Returns a value for the passed parameter name.
		@throws DOMError
	**/
	function getParameter( pname : Int ) : Dynamic;
	
	/**
		Returns error information.
	**/
	function getError() : Int;
	
	/**
		Returns information about the framebuffer.
		@throws DOMError
	**/
	function getFramebufferAttachmentParameter( target : Int, attachment : Int, pname : Int ) : Dynamic;
	
	/**
		Returns information about the program.
	**/
	function getProgramParameter( program : Program, pname : Int ) : Dynamic;
	
	/**
		Returns the information log for a `WebGLProgram` object.
	**/
	function getProgramInfoLog( program : Program ) : String;
	
	/**
		Returns information about the renderbuffer.
	**/
	function getRenderbufferParameter( target : Int, pname : Int ) : Dynamic;
	
	/**
		Returns information about the shader.
	**/
	function getShaderParameter( shader : Shader, pname : Int ) : Dynamic;
	
	/**
		Returns a `WebGLShaderPrecisionFormat` object describing the precision for the numeric format of the shader.
	**/
	function getShaderPrecisionFormat( shadertype : Int, precisiontype : Int ) : ShaderPrecisionFormat;
	
	/**
		Returns the information log for a `WebGLShader` object.
	**/
	function getShaderInfoLog( shader : Shader ) : String;
	
	/**
		Returns the source code of a `WebGLShader` as a string.
	**/
	function getShaderSource( shader : Shader ) : String;
	
	/**
		Returns information about the texture.
	**/
	function getTexParameter( target : Int, pname : Int ) : Dynamic;
	
	/**
		Returns the value of a uniform variable at a given location.
	**/
	function getUniform( program : Program, location : UniformLocation ) : Dynamic;
	
	/**
		Returns the location of a uniform variable.
	**/
	function getUniformLocation( program : Program, name : String ) : UniformLocation;
	
	/**
		Returns information about a vertex attribute at a given position.
		@throws DOMError
	**/
	function getVertexAttrib( index : Int, pname : Int ) : Dynamic;
	
	/**
		Returns the address of a given vertex attribute.
	**/
	function getVertexAttribOffset( index : Int, pname : Int ) : Int;
	
	/**
		Specifies hints for certain behaviors. The interpretation of these hints depend on the implementation.
	**/
	function hint( target : Int, mode : Int ) : Void;
	
	/**
		Returns a Boolean indicating if the passed buffer is valid.
	**/
	function isBuffer( buffer : Buffer ) : Bool;
	
	/**
		Tests whether a specific WebGL capability is enabled or not for this context.
	**/
	function isEnabled( cap : Int ) : Bool;
	
	/**
		Returns a Boolean indicating if the passed `WebGLFrameBuffer` object is valid.
	**/
	function isFramebuffer( framebuffer : Framebuffer ) : Bool;
	
	/**
		Returns a Boolean indicating if the passed `WebGLProgram` is valid.
	**/
	function isProgram( program : Program ) : Bool;
	
	/**
		Returns a Boolean indicating if the passed `WebGLRenderingBuffer` is valid.
	**/
	function isRenderbuffer( renderbuffer : Renderbuffer ) : Bool;
	
	/**
		Returns a Boolean indicating if the passed `WebGLShader` is valid.
	**/
	function isShader( shader : Shader ) : Bool;
	
	/**
		Returns a Boolean indicating if the passed `WebGLTexture` is valid.
	**/
	function isTexture( texture : Texture ) : Bool;
	
	/**
		Sets the line width of rasterized lines.
	**/
	function lineWidth( width : Float ) : Void;
	
	/**
		Links the passed `WebGLProgram` object.
	**/
	function linkProgram( program : Program ) : Void;
	
	/**
		Specifies the pixel storage modes
	**/
	function pixelStorei( pname : Int, param : Int ) : Void;
	
	/**
		Specifies the scale factors and units to calculate depth values.
	**/
	function polygonOffset( factor : Float, units : Float ) : Void;
	
	/**
		Creates a renderbuffer data store.
	**/
	function renderbufferStorage( target : Int, internalformat : Int, width : Int, height : Int ) : Void;
	
	/**
		Specifies multi-sample coverage parameters for anti-aliasing effects.
	**/
	function sampleCoverage( value : Float, invert : Bool ) : Void;
	
	/**
		Defines the scissor box.
	**/
	function scissor( x : Int, y : Int, width : Int, height : Int ) : Void;
	
	/**
		Sets the source code in a `WebGLShader`.
	**/
	function shaderSource( shader : Shader, source : String ) : Void;
	
	/**
		Sets the both front and back function and reference value for stencil testing.
	**/
	function stencilFunc( func : Int, ref : Int, mask : Int ) : Void;
	
	/**
		Sets the front and/or back function and reference value for stencil testing.
	**/
	function stencilFuncSeparate( face : Int, func : Int, ref : Int, mask : Int ) : Void;
	
	/**
		Controls enabling and disabling of both the front and back writing of individual bits in the stencil planes.
	**/
	function stencilMask( mask : Int ) : Void;
	
	/**
		Controls enabling and disabling of front and/or back writing of individual bits in the stencil planes.
	**/
	function stencilMaskSeparate( face : Int, mask : Int ) : Void;
	
	/**
		Sets both the front and back-facing stencil test actions.
	**/
	function stencilOp( fail : Int, zfail : Int, zpass : Int ) : Void;
	
	/**
		Sets the front and/or back-facing stencil test actions.
	**/
	function stencilOpSeparate( face : Int, fail : Int, zfail : Int, zpass : Int ) : Void;
	function texParameterf( target : Int, pname : Int, param : Float ) : Void;
	function texParameteri( target : Int, pname : Int, param : Int ) : Void;
	function uniform1f( location : UniformLocation, x : Float ) : Void;
	function uniform2f( location : UniformLocation, x : Float, y : Float ) : Void;
	function uniform3f( location : UniformLocation, x : Float, y : Float, z : Float ) : Void;
	function uniform4f( location : UniformLocation, x : Float, y : Float, z : Float, w : Float ) : Void;
	function uniform1i( location : UniformLocation, x : Int ) : Void;
	function uniform2i( location : UniformLocation, x : Int, y : Int ) : Void;
	function uniform3i( location : UniformLocation, x : Int, y : Int, z : Int ) : Void;
	function uniform4i( location : UniformLocation, x : Int, y : Int, z : Int, w : Int ) : Void;
	
	/**
		Uses the specified `WebGLProgram` as part the current rendering state.
	**/
	function useProgram( program : Program ) : Void;
	
	/**
		Validates a `WebGLProgram`.
	**/
	function validateProgram( program : Program ) : Void;
	function vertexAttrib1f( indx : Int, x : Float ) : Void;
	@:overload( function( indx : Int, values : Array<Float>) : Void {} )
	function vertexAttrib1fv( indx : Int, values : js.lib.Float32Array ) : Void;
	function vertexAttrib2f( indx : Int, x : Float, y : Float ) : Void;
	@:overload( function( indx : Int, values : Array<Float>) : Void {} )
	function vertexAttrib2fv( indx : Int, values : js.lib.Float32Array ) : Void;
	function vertexAttrib3f( indx : Int, x : Float, y : Float, z : Float ) : Void;
	@:overload( function( indx : Int, values : Array<Float>) : Void {} )
	function vertexAttrib3fv( indx : Int, values : js.lib.Float32Array ) : Void;
	function vertexAttrib4f( indx : Int, x : Float, y : Float, z : Float, w : Float ) : Void;
	@:overload( function( indx : Int, values : Array<Float>) : Void {} )
	function vertexAttrib4fv( indx : Int, values : js.lib.Float32Array ) : Void;
	
	/**
		Specifies the data formats and locations of vertex attributes in a vertex attributes array.
	**/
	function vertexAttribPointer( indx : Int, size : Int, type : Int, normalized : Bool, stride : Int, offset : Int ) : Void;
	
	/**
		Sets the viewport.
	**/
	function viewport( x : Int, y : Int, width : Int, height : Int ) : Void;
}