use types::c;

export type SDL_GUID = __struct_SDL_GUID;

export @symbol("SDL_GUIDToString") fn SDL_GUIDToString(
	guid: SDL_GUID,
	pszGUID: nullable *c::char,
	cbGUID: int,
) void;

export @symbol("SDL_StringToGUID") fn SDL_StringToGUID(
	pchGUID: nullable *const c::char,
) SDL_GUID;

export type __struct_SDL_GUID = struct {
	data: [16]u8,
};
