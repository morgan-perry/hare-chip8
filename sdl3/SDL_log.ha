use types::c;

export @symbol("SDL_GetDefaultLogOutputFunction") fn SDL_GetDefaultLogOutputFunction(
) SDL_LogOutputFunction;

export @symbol("SDL_GetLogOutputFunction") fn SDL_GetLogOutputFunction(
	callback: nullable *SDL_LogOutputFunction,
	userdata: nullable *nullable *opaque,
) void;

export @symbol("SDL_GetLogPriority") fn SDL_GetLogPriority(
	category: int,
) SDL_LogPriority;

export def SDL_LOG_CATEGORY_APPLICATION: int = 0;

export def SDL_LOG_CATEGORY_ASSERT: int = 2;

export def SDL_LOG_CATEGORY_AUDIO: int = 4;

export def SDL_LOG_CATEGORY_CUSTOM: int = 19;

export def SDL_LOG_CATEGORY_ERROR: int = 1;

export def SDL_LOG_CATEGORY_GPU: int = 9;

export def SDL_LOG_CATEGORY_INPUT: int = 7;

export def SDL_LOG_CATEGORY_RENDER: int = 6;

export def SDL_LOG_CATEGORY_RESERVED10: int = 18;

export def SDL_LOG_CATEGORY_RESERVED2: int = 10;

export def SDL_LOG_CATEGORY_RESERVED3: int = 11;

export def SDL_LOG_CATEGORY_RESERVED4: int = 12;

export def SDL_LOG_CATEGORY_RESERVED5: int = 13;

export def SDL_LOG_CATEGORY_RESERVED6: int = 14;

export def SDL_LOG_CATEGORY_RESERVED7: int = 15;

export def SDL_LOG_CATEGORY_RESERVED8: int = 16;

export def SDL_LOG_CATEGORY_RESERVED9: int = 17;

export def SDL_LOG_CATEGORY_SYSTEM: int = 3;

export def SDL_LOG_CATEGORY_TEST: int = 8;

export def SDL_LOG_CATEGORY_VIDEO: int = 5;

export def SDL_LOG_PRIORITY_COUNT: int = 8;

export def SDL_LOG_PRIORITY_CRITICAL: int = 7;

export def SDL_LOG_PRIORITY_DEBUG: int = 3;

export def SDL_LOG_PRIORITY_ERROR: int = 6;

export def SDL_LOG_PRIORITY_INFO: int = 4;

export def SDL_LOG_PRIORITY_INVALID: int = 0;

export def SDL_LOG_PRIORITY_TRACE: int = 1;

export def SDL_LOG_PRIORITY_VERBOSE: int = 2;

export def SDL_LOG_PRIORITY_WARN: int = 5;

export @symbol("SDL_Log") fn SDL_Log(fmt: nullable *const c::char, ...) void;

export type SDL_LogCategory = __enum_SDL_LogCategory;

export @symbol("SDL_LogCritical") fn SDL_LogCritical(
	category: int,
	fmt: nullable *const c::char,
	...
) void;

export @symbol("SDL_LogDebug") fn SDL_LogDebug(
	category: int,
	fmt: nullable *const c::char,
	...
) void;

export @symbol("SDL_LogError") fn SDL_LogError(
	category: int,
	fmt: nullable *const c::char,
	...
) void;

export @symbol("SDL_LogInfo") fn SDL_LogInfo(
	category: int,
	fmt: nullable *const c::char,
	...
) void;

export @symbol("SDL_LogMessage") fn SDL_LogMessage(
	category: int,
	priority: SDL_LogPriority,
	fmt: nullable *const c::char,
	...
) void;

export @symbol("SDL_LogMessageV") fn SDL_LogMessageV(
	category: int,
	priority: SDL_LogPriority,
	fmt: nullable *const c::char,
	ap: valist,
) void;

export type SDL_LogOutputFunction = nullable *const fn(
	userdata: nullable *opaque,
	category: int,
	priority: SDL_LogPriority,
	message: nullable *const c::char,
) void;

export type SDL_LogPriority = __enum_SDL_LogPriority;

export @symbol("SDL_LogTrace") fn SDL_LogTrace(
	category: int,
	fmt: nullable *const c::char,
	...
) void;

export @symbol("SDL_LogVerbose") fn SDL_LogVerbose(
	category: int,
	fmt: nullable *const c::char,
	...
) void;

export @symbol("SDL_LogWarn") fn SDL_LogWarn(
	category: int,
	fmt: nullable *const c::char,
	...
) void;

export @symbol("SDL_ResetLogPriorities") fn SDL_ResetLogPriorities() void;

export @symbol("SDL_SetLogOutputFunction") fn SDL_SetLogOutputFunction(
	callback: SDL_LogOutputFunction,
	userdata: nullable *opaque,
) void;

export @symbol("SDL_SetLogPriorities") fn SDL_SetLogPriorities(
	priority: SDL_LogPriority,
) void;

export @symbol("SDL_SetLogPriority") fn SDL_SetLogPriority(
	category: int,
	priority: SDL_LogPriority,
) void;

export @symbol("SDL_SetLogPriorityPrefix") fn SDL_SetLogPriorityPrefix(
	priority: SDL_LogPriority,
	prefix: nullable *const c::char,
) bool;

export type __enum_SDL_LogCategory = uint;

export type __enum_SDL_LogPriority = uint;
