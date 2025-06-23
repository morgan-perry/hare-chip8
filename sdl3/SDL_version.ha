use types::c;

export @symbol("SDL_GetRevision") fn SDL_GetRevision() nullable *const c::char;

export @symbol("SDL_GetVersion") fn SDL_GetVersion() int;
