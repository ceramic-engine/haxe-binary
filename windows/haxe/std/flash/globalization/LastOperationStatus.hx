package flash.globalization;

@:native("flash.globalization.LastOperationStatus") extern enum abstract LastOperationStatus(String) {
	var BUFFER_OVERFLOW_ERROR;
	var ERROR_CODE_UNKNOWN;
	var ILLEGAL_ARGUMENT_ERROR;
	var INDEX_OUT_OF_BOUNDS_ERROR;
	var INVALID_ATTR_VALUE;
	var INVALID_CHAR_FOUND;
	var MEMORY_ALLOCATION_ERROR;
	var NO_ERROR;
	var NUMBER_OVERFLOW_ERROR;
	var PARSE_ERROR;
	var PATTERN_SYNTAX_ERROR;
	var PLATFORM_API_FAILED;
	var TRUNCATED_CHAR_FOUND;
	var UNEXPECTED_TOKEN;
	var UNSUPPORTED_ERROR;
	var USING_DEFAULT_WARNING;
	var USING_FALLBACK_WARNING;
}
