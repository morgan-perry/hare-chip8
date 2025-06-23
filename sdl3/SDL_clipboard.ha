use types::c;

export @symbol("SDL_ClearClipboardData") fn SDL_ClearClipboardData() bool;

export type SDL_ClipboardCleanupCallback = nullable *const fn(
	userdata: nullable *opaque,
) void;

export type SDL_ClipboardDataCallback = nullable *const fn(
	userdata: nullable *opaque,
	mime_type: nullable *const c::char,
	__size: nullable *size,
) nullable *const opaque;

export @symbol("SDL_GetClipboardData") fn SDL_GetClipboardData(
	mime_type: nullable *const c::char,
	__size: nullable *size,
) nullable *opaque;

export @symbol("SDL_GetClipboardMimeTypes") fn SDL_GetClipboardMimeTypes(
	num_mime_types: nullable *size,
) nullable *nullable *c::char;

export @symbol("SDL_GetClipboardText") fn SDL_GetClipboardText(
) nullable *c::char;

export @symbol("SDL_GetPrimarySelectionText") fn SDL_GetPrimarySelectionText(
) nullable *c::char;

export @symbol("SDL_HasClipboardData") fn SDL_HasClipboardData(
	mime_type: nullable *const c::char,
) bool;

export @symbol("SDL_HasClipboardText") fn SDL_HasClipboardText() bool;

export @symbol("SDL_HasPrimarySelectionText") fn SDL_HasPrimarySelectionText(
) bool;

export @symbol("SDL_SetClipboardData") fn SDL_SetClipboardData(
	callback: SDL_ClipboardDataCallback,
	cleanup: SDL_ClipboardCleanupCallback,
	userdata: nullable *opaque,
	mime_types: nullable *nullable *const c::char,
	num_mime_types: size,
) bool;

export @symbol("SDL_SetClipboardText") fn SDL_SetClipboardText(
	text: nullable *const c::char,
) bool;

export @symbol("SDL_SetPrimarySelectionText") fn SDL_SetPrimarySelectionText(
	text: nullable *const c::char,
) bool;
