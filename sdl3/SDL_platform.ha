use types::c;

export @symbol("SDL_GetPlatform") fn SDL_GetPlatform() nullable *const c::char;
