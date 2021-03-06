package flash.media;

extern class AVStream extends flash.events.EventDispatcher {
	@:flash.property var backBufferLength(get,never) : Float;
	@:flash.property var backBufferTime(never,set) : Float;
	@:flash.property var bufferLength(get,never) : Float;
	@:flash.property var bufferTime(never,set) : Float;
	@:flash.property var captionStyle(never,set) : AVCaptionStyle;
	@:flash.property var captionsEnabled(get,set) : Bool;
	@:flash.property var clientLivePoint(get,never) : Float;
	@:flash.property var currentFPS(get,never) : Float;
	@:flash.property var decoderType(get,never) : String;
	@:flash.property var droppedFrames(get,never) : Int;
	@:flash.property var frameTime(get,never) : Float;
	@:flash.property var initialBufferTime(never,set) : Float;
	@:flash.property var playState(get,never) : AVPlayState;
	@:flash.property var renderType(get,never) : String;
	@:flash.property var time(get,never) : Float;
	@:flash.property var useHardwareDecoder(get,set) : Bool;
	@:flash.property var volume(get,set) : Float;
	function new(source : AVSource) : Void;
	function dispose() : Void;
	function fastForward(rate : Float) : AVResult;
	private function get_backBufferLength() : Float;
	private function get_bufferLength() : Float;
	private function get_captionsEnabled() : Bool;
	private function get_clientLivePoint() : Float;
	private function get_currentFPS() : Float;
	private function get_decoderType() : String;
	private function get_droppedFrames() : Int;
	private function get_frameTime() : Float;
	private function get_playState() : AVPlayState;
	private function get_renderType() : String;
	private function get_time() : Float;
	private function get_useHardwareDecoder() : Bool;
	private function get_volume() : Float;
	function pause() : AVResult;
	function play() : AVResult;
	function resume() : Bool;
	function rewind(rate : Float) : AVResult;
	function seek(offset : Float, inBufferSeek : Bool = true) : AVResult;
	function seekToKeyFrame(offset : Float, inBufferSeek : Bool = true) : AVResult;
	function seekToLivePoint() : AVResult;
	function seekToLocalTime(periodIndex : Int, time : Float) : AVResult;
	function setPlaySpeed(speed : Float, reserved : Float) : Void;
	private function set_backBufferTime(value : Float) : Float;
	private function set_bufferTime(value : Float) : Float;
	private function set_captionStyle(value : AVCaptionStyle) : AVCaptionStyle;
	private function set_captionsEnabled(value : Bool) : Bool;
	private function set_initialBufferTime(value : Float) : Float;
	private function set_useHardwareDecoder(value : Bool) : Bool;
	private function set_volume(value : Float) : Float;
	function step(frames : Int) : AVResult;
	static final HARDWARE : String;
	static final SOFTWARE : String;
	static final UNDEFINED : String;
}
