use types::c;

export def SDL_ASSERTION_ABORT: int = 2;

export def SDL_ASSERTION_ALWAYS_IGNORE: int = 4;

export def SDL_ASSERTION_BREAK: int = 1;

export def SDL_ASSERTION_IGNORE: int = 3;

export def SDL_ASSERTION_RETRY: int = 0;

export type SDL_AssertData = __struct_SDL_AssertData;

export type SDL_AssertState = __enum_SDL_AssertState;

export type SDL_AssertionHandler = nullable *const fn(
	data: nullable *const SDL_AssertData,
	userdata: nullable *opaque,
) SDL_AssertState;

export @symbol("SDL_GetAssertionHandler") fn SDL_GetAssertionHandler(
	puserdata: nullable *nullable *opaque,
) SDL_AssertionHandler;

export @symbol("SDL_GetAssertionReport") fn SDL_GetAssertionReport(
) nullable *const SDL_AssertData;

export @symbol("SDL_GetDefaultAssertionHandler") fn SDL_GetDefaultAssertionHandler(
) SDL_AssertionHandler;

export @symbol("SDL_ReportAssertion") fn SDL_ReportAssertion(
	data: nullable *SDL_AssertData,
	func: nullable *const c::char,
	file: nullable *const c::char,
	line: int,
) SDL_AssertState;

export @symbol("SDL_ResetAssertionReport") fn SDL_ResetAssertionReport() void;

export @symbol("SDL_SetAssertionHandler") fn SDL_SetAssertionHandler(
	handler: SDL_AssertionHandler,
	userdata: nullable *opaque,
) void;

export type __enum_SDL_AssertState = uint;

export type __struct_SDL_AssertData = struct {
	always_ignore: bool,
	trigger_count: uint,
	condition: nullable *const c::char,
	filename: nullable *const c::char,
	linenum: int,
	function: nullable *const c::char,
	next: nullable *const __struct_SDL_AssertData,
};
