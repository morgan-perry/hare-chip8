use types::c;

export @symbol("SDL_ClearError") fn SDL_ClearError() bool;

export @symbol("SDL_GetError") fn SDL_GetError() nullable *const c::char;

export @symbol("SDL_OutOfMemory") fn SDL_OutOfMemory() bool;

export @symbol("SDL_SetError") fn SDL_SetError(
	fmt: nullable *const c::char,
	...
) bool;

export @symbol("SDL_SetErrorV") fn SDL_SetErrorV(
	fmt: nullable *const c::char,
	ap: valist,
) bool;
