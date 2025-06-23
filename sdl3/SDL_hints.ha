use types::c;

export @symbol("SDL_AddHintCallback") fn SDL_AddHintCallback(
	name: nullable *const c::char,
	callback: SDL_HintCallback,
	userdata: nullable *opaque,
) bool;

export @symbol("SDL_GetHint") fn SDL_GetHint(
	name: nullable *const c::char,
) nullable *const c::char;

export @symbol("SDL_GetHintBoolean") fn SDL_GetHintBoolean(
	name: nullable *const c::char,
	default_value: bool,
) bool;

export def SDL_HINT_DEFAULT: int = 0;

export def SDL_HINT_NORMAL: int = 1;

export def SDL_HINT_OVERRIDE: int = 2;

export type SDL_HintCallback = nullable *const fn(
	userdata: nullable *opaque,
	name: nullable *const c::char,
	oldValue: nullable *const c::char,
	newValue: nullable *const c::char,
) void;

export type SDL_HintPriority = __enum_SDL_HintPriority;

export @symbol("SDL_RemoveHintCallback") fn SDL_RemoveHintCallback(
	name: nullable *const c::char,
	callback: SDL_HintCallback,
	userdata: nullable *opaque,
) void;

export @symbol("SDL_ResetHint") fn SDL_ResetHint(
	name: nullable *const c::char,
) bool;

export @symbol("SDL_ResetHints") fn SDL_ResetHints() void;

export @symbol("SDL_SetHint") fn SDL_SetHint(
	name: nullable *const c::char,
	value: nullable *const c::char,
) bool;

export @symbol("SDL_SetHintWithPriority") fn SDL_SetHintWithPriority(
	name: nullable *const c::char,
	value: nullable *const c::char,
	priority: SDL_HintPriority,
) bool;

export type __enum_SDL_HintPriority = uint;
