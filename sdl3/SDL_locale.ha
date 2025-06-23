use types::c;

export @symbol("SDL_GetPreferredLocales") fn SDL_GetPreferredLocales(
	count: nullable *int,
) nullable *nullable *SDL_Locale;

export type SDL_Locale = __struct_SDL_Locale;

export type __struct_SDL_Locale = struct {
	language: nullable *const c::char,
	country: nullable *const c::char,
};
