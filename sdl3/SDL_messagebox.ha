use types::c;

export def SDL_MESSAGEBOX_COLOR_BACKGROUND: int = 0;

export def SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND: int = 3;

export def SDL_MESSAGEBOX_COLOR_BUTTON_BORDER: int = 2;

export def SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED: int = 4;

export def SDL_MESSAGEBOX_COLOR_COUNT: int = 5;

export def SDL_MESSAGEBOX_COLOR_TEXT: int = 1;

export type SDL_MessageBoxButtonData = __struct_SDL_MessageBoxButtonData;

export type SDL_MessageBoxButtonFlags = u32;

export type SDL_MessageBoxColor = __struct_SDL_MessageBoxColor;

export type SDL_MessageBoxColorScheme = __struct_SDL_MessageBoxColorScheme;

export type SDL_MessageBoxColorType = __enum_SDL_MessageBoxColorType;

export type SDL_MessageBoxData = __struct_SDL_MessageBoxData;

export type SDL_MessageBoxFlags = u32;

export @symbol("SDL_ShowMessageBox") fn SDL_ShowMessageBox(
	messageboxdata: nullable *const SDL_MessageBoxData,
	buttonid: nullable *int,
) bool;

export @symbol("SDL_ShowSimpleMessageBox") fn SDL_ShowSimpleMessageBox(
	flags: SDL_MessageBoxFlags,
	title: nullable *const c::char,
	message: nullable *const c::char,
	window: nullable *SDL_Window,
) bool;

export type __enum_SDL_MessageBoxColorType = uint;

export type __struct_SDL_MessageBoxButtonData = struct {
	flags: SDL_MessageBoxButtonFlags,
	buttonID: int,
	text: nullable *const c::char,
};

export type __struct_SDL_MessageBoxColor = struct {
	r: u8,
	g: u8,
	b: u8,
};

export type __struct_SDL_MessageBoxColorScheme = struct {
	colors: [5]SDL_MessageBoxColor,
};

export type __struct_SDL_MessageBoxData = struct {
	flags: SDL_MessageBoxFlags,
	window: nullable *SDL_Window,
	title: nullable *const c::char,
	message: nullable *const c::char,
	numbuttons: int,
	buttons: nullable *const SDL_MessageBoxButtonData,
	colorScheme: nullable *const SDL_MessageBoxColorScheme,
};
