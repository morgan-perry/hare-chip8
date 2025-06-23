use types::c;

export @symbol("SDL_CaptureMouse") fn SDL_CaptureMouse(enabled: bool) bool;

export @symbol("SDL_CreateColorCursor") fn SDL_CreateColorCursor(
	surface: nullable *SDL_Surface,
	hot_x: int,
	hot_y: int,
) nullable *SDL_Cursor;

export @symbol("SDL_CreateCursor") fn SDL_CreateCursor(
	data: nullable *const u8,
	mask: nullable *const u8,
	w: int,
	h: int,
	hot_x: int,
	hot_y: int,
) nullable *SDL_Cursor;

export @symbol("SDL_CreateSystemCursor") fn SDL_CreateSystemCursor(
	id: SDL_SystemCursor,
) nullable *SDL_Cursor;

export type SDL_Cursor = __struct_SDL_Cursor;

export @symbol("SDL_CursorVisible") fn SDL_CursorVisible() bool;

export @symbol("SDL_DestroyCursor") fn SDL_DestroyCursor(
	cursor: nullable *SDL_Cursor,
) void;

export @symbol("SDL_GetCursor") fn SDL_GetCursor() nullable *SDL_Cursor;

export @symbol("SDL_GetDefaultCursor") fn SDL_GetDefaultCursor(
) nullable *SDL_Cursor;

export @symbol("SDL_GetGlobalMouseState") fn SDL_GetGlobalMouseState(
	x: nullable *f32,
	y: nullable *f32,
) SDL_MouseButtonFlags;

export @symbol("SDL_GetMice") fn SDL_GetMice(
	count: nullable *int,
) nullable *SDL_MouseID;

export @symbol("SDL_GetMouseFocus") fn SDL_GetMouseFocus(
) nullable *SDL_Window;

export @symbol("SDL_GetMouseNameForID") fn SDL_GetMouseNameForID(
	instance_id: SDL_MouseID,
) nullable *const c::char;

export @symbol("SDL_GetMouseState") fn SDL_GetMouseState(
	x: nullable *f32,
	y: nullable *f32,
) SDL_MouseButtonFlags;

export @symbol("SDL_GetRelativeMouseState") fn SDL_GetRelativeMouseState(
	x: nullable *f32,
	y: nullable *f32,
) SDL_MouseButtonFlags;

export @symbol("SDL_GetWindowRelativeMouseMode") fn SDL_GetWindowRelativeMouseMode(
	window: nullable *SDL_Window,
) bool;

export @symbol("SDL_HasMouse") fn SDL_HasMouse() bool;

export @symbol("SDL_HideCursor") fn SDL_HideCursor() bool;

export def SDL_MOUSEWHEEL_FLIPPED: int = 1;

export def SDL_MOUSEWHEEL_NORMAL: int = 0;

export type SDL_MouseButtonFlags = u32;

export type SDL_MouseID = u32;

export type SDL_MouseWheelDirection = __enum_SDL_MouseWheelDirection;

export def SDL_SYSTEM_CURSOR_COUNT: int = 20;

export def SDL_SYSTEM_CURSOR_CROSSHAIR: int = 3;

export def SDL_SYSTEM_CURSOR_DEFAULT: int = 0;

export def SDL_SYSTEM_CURSOR_EW_RESIZE: int = 7;

export def SDL_SYSTEM_CURSOR_E_RESIZE: int = 15;

export def SDL_SYSTEM_CURSOR_MOVE: int = 9;

export def SDL_SYSTEM_CURSOR_NESW_RESIZE: int = 6;

export def SDL_SYSTEM_CURSOR_NE_RESIZE: int = 14;

export def SDL_SYSTEM_CURSOR_NOT_ALLOWED: int = 10;

export def SDL_SYSTEM_CURSOR_NS_RESIZE: int = 8;

export def SDL_SYSTEM_CURSOR_NWSE_RESIZE: int = 5;

export def SDL_SYSTEM_CURSOR_NW_RESIZE: int = 12;

export def SDL_SYSTEM_CURSOR_N_RESIZE: int = 13;

export def SDL_SYSTEM_CURSOR_POINTER: int = 11;

export def SDL_SYSTEM_CURSOR_PROGRESS: int = 4;

export def SDL_SYSTEM_CURSOR_SE_RESIZE: int = 16;

export def SDL_SYSTEM_CURSOR_SW_RESIZE: int = 18;

export def SDL_SYSTEM_CURSOR_S_RESIZE: int = 17;

export def SDL_SYSTEM_CURSOR_TEXT: int = 1;

export def SDL_SYSTEM_CURSOR_WAIT: int = 2;

export def SDL_SYSTEM_CURSOR_W_RESIZE: int = 19;

export @symbol("SDL_SetCursor") fn SDL_SetCursor(
	cursor: nullable *SDL_Cursor,
) bool;

export @symbol("SDL_SetWindowRelativeMouseMode") fn SDL_SetWindowRelativeMouseMode(
	window: nullable *SDL_Window,
	enabled: bool,
) bool;

export @symbol("SDL_ShowCursor") fn SDL_ShowCursor() bool;

export type SDL_SystemCursor = __enum_SDL_SystemCursor;

export @symbol("SDL_WarpMouseGlobal") fn SDL_WarpMouseGlobal(
	x: f32,
	y: f32,
) bool;

export @symbol("SDL_WarpMouseInWindow") fn SDL_WarpMouseInWindow(
	window: nullable *SDL_Window,
	x: f32,
	y: f32,
) void;

export type __enum_SDL_MouseWheelDirection = uint;

export type __enum_SDL_SystemCursor = uint;

export type __struct_SDL_Cursor = opaque;
