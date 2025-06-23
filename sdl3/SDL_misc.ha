use types::c;

export @symbol("SDL_OpenURL") fn SDL_OpenURL(
	url: nullable *const c::char,
) bool;
