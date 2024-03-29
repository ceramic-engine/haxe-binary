package flash.globalization;

@:require(flash10_1) extern final class CurrencyFormatter {
	@:flash.property var actualLocaleIDName(get,never) : String;
	@:flash.property var currencyISOCode(get,never) : String;
	@:flash.property var currencySymbol(get,never) : String;
	@:flash.property var decimalSeparator(get,set) : String;
	@:flash.property var digitsType(get,set) : UInt;
	@:flash.property var fractionalDigits(get,set) : Int;
	@:flash.property var groupingPattern(get,set) : String;
	@:flash.property var groupingSeparator(get,set) : String;
	@:flash.property var lastOperationStatus(get,never) : LastOperationStatus;
	@:flash.property var leadingZero(get,set) : Bool;
	@:flash.property var negativeCurrencyFormat(get,set) : UInt;
	@:flash.property var negativeSymbol(get,set) : String;
	@:flash.property var positiveCurrencyFormat(get,set) : UInt;
	@:flash.property var requestedLocaleIDName(get,never) : String;
	@:flash.property var trailingZeros(get,set) : Bool;
	@:flash.property var useGrouping(get,set) : Bool;
	function new(requestedLocaleIDName : String) : Void;
	function format(value : Float, withCurrencySymbol : Bool = false) : String;
	function formattingWithCurrencySymbolIsSafe(requestedISOCode : String) : Bool;
	private function get_actualLocaleIDName() : String;
	private function get_currencyISOCode() : String;
	private function get_currencySymbol() : String;
	private function get_decimalSeparator() : String;
	private function get_digitsType() : UInt;
	private function get_fractionalDigits() : Int;
	private function get_groupingPattern() : String;
	private function get_groupingSeparator() : String;
	private function get_lastOperationStatus() : LastOperationStatus;
	private function get_leadingZero() : Bool;
	private function get_negativeCurrencyFormat() : UInt;
	private function get_negativeSymbol() : String;
	private function get_positiveCurrencyFormat() : UInt;
	private function get_requestedLocaleIDName() : String;
	private function get_trailingZeros() : Bool;
	private function get_useGrouping() : Bool;
	function parse(inputString : String) : CurrencyParseResult;
	function setCurrency(currencyISOCode : String, currencySymbol : String) : Void;
	private function set_decimalSeparator(value : String) : String;
	private function set_digitsType(value : UInt) : UInt;
	private function set_fractionalDigits(value : Int) : Int;
	private function set_groupingPattern(value : String) : String;
	private function set_groupingSeparator(value : String) : String;
	private function set_leadingZero(value : Bool) : Bool;
	private function set_negativeCurrencyFormat(value : UInt) : UInt;
	private function set_negativeSymbol(value : String) : String;
	private function set_positiveCurrencyFormat(value : UInt) : UInt;
	private function set_trailingZeros(value : Bool) : Bool;
	private function set_useGrouping(value : Bool) : Bool;
	static function getAvailableLocaleIDNames() : flash.Vector<String>;
}
