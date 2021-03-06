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

// This file is generated from mozilla\SVGImageElement.webidl. Do not edit!

package js.html.svg;

/**
	The `SVGImageElement` interface corresponds to the `image` element.

	Documentation [SVGImageElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement) by [Mozilla Contributors](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement$history), licensed under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/).

	@see <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement>
**/
@:native("SVGImageElement")
extern class ImageElement extends GraphicsElement {
	
	/**
		An `SVGAnimatedLength` corresponding to the `x` attribute of the given `image` element.
	**/
	var x(default,null) : AnimatedLength;
	
	/**
		An `SVGAnimatedLength` corresponding to the `y` attribute of the given `image` element.
	**/
	var y(default,null) : AnimatedLength;
	
	/**
		An `SVGAnimatedLength` corresponding to the `width` attribute of the given `image` element.
	**/
	var width(default,null) : AnimatedLength;
	
	/**
		An `SVGAnimatedLength` corresponding to the `height` attribute of the given `image` element.
	**/
	var height(default,null) : AnimatedLength;
	
	/**
		An `SVGAnimatedPreserveAspectRatio` corresponding to the `preserveAspectRatio` attribute of the given `image` element.
	**/
	var preserveAspectRatio(default,null) : AnimatedPreserveAspectRatio;
	var decoding : String;
	var href(default,null) : AnimatedString;
	
}