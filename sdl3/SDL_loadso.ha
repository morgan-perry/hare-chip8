use types::c;

export @symbol("SDL_LoadFunction") fn SDL_LoadFunction(
	handle: nullable *SDL_SharedObject,
	name: nullable *const c::char,
) SDL_FunctionPointer;

export @symbol("SDL_LoadObject") fn SDL_LoadObject(
	sofile: nullable *const c::char,
) nullable *SDL_SharedObject;

export type SDL_SharedObject = __struct_SDL_SharedObject;

export @symbol("SDL_UnloadObject") fn SDL_UnloadObject(
	handle: nullable *SDL_SharedObject,
) void;

export type __struct_SDL_SharedObject = opaque;
