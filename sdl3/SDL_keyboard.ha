use types::c;

export def SDL_CAPITALIZE_LETTERS: int = 3;

export def SDL_CAPITALIZE_NONE: int = 0;

export def SDL_CAPITALIZE_SENTENCES: int = 1;

export def SDL_CAPITALIZE_WORDS: int = 2;

export type SDL_Capitalization = __enum_SDL_Capitalization;

export @symbol("SDL_ClearComposition") fn SDL_ClearComposition(
	window: nullable *SDL_Window,
) bool;

export @symbol("SDL_GetKeyFromName") fn SDL_GetKeyFromName(
	name: nullable *const c::char,
) SDL_Keycode;

export @symbol("SDL_GetKeyFromScancode") fn SDL_GetKeyFromScancode(
	scancode: SDL_Scancode,
	modstate: SDL_Keymod,
	key_event: bool,
) SDL_Keycode;

export @symbol("SDL_GetKeyName") fn SDL_GetKeyName(
	key: SDL_Keycode,
) nullable *const c::char;

export @symbol("SDL_GetKeyboardFocus") fn SDL_GetKeyboardFocus(
) nullable *SDL_Window;

export @symbol("SDL_GetKeyboardNameForID") fn SDL_GetKeyboardNameForID(
	instance_id: SDL_KeyboardID,
) nullable *const c::char;

export @symbol("SDL_GetKeyboardState") fn SDL_GetKeyboardState(
	numkeys: nullable *int,
) nullable *const bool;

export @symbol("SDL_GetKeyboards") fn SDL_GetKeyboards(
	count: nullable *int,
) nullable *SDL_KeyboardID;

export @symbol("SDL_GetModState") fn SDL_GetModState() SDL_Keymod;

export @symbol("SDL_GetScancodeFromKey") fn SDL_GetScancodeFromKey(
	key: SDL_Keycode,
	modstate: nullable *SDL_Keymod,
) SDL_Scancode;

export @symbol("SDL_GetScancodeFromName") fn SDL_GetScancodeFromName(
	name: nullable *const c::char,
) SDL_Scancode;

export @symbol("SDL_GetScancodeName") fn SDL_GetScancodeName(
	scancode: SDL_Scancode,
) nullable *const c::char;

export @symbol("SDL_GetTextInputArea") fn SDL_GetTextInputArea(
	window: nullable *SDL_Window,
	rect: nullable *SDL_Rect,
	cursor: nullable *int,
) bool;

export @symbol("SDL_HasKeyboard") fn SDL_HasKeyboard() bool;

export @symbol("SDL_HasScreenKeyboardSupport") fn SDL_HasScreenKeyboardSupport(
) bool;

export type SDL_KeyboardID = u32;

export @symbol("SDL_ResetKeyboard") fn SDL_ResetKeyboard() void;

export @symbol("SDL_ScreenKeyboardShown") fn SDL_ScreenKeyboardShown(
	window: nullable *SDL_Window,
) bool;

export @symbol("SDL_SetModState") fn SDL_SetModState(
	modstate: SDL_Keymod,
) void;

export @symbol("SDL_SetScancodeName") fn SDL_SetScancodeName(
	scancode: SDL_Scancode,
	name: nullable *const c::char,
) bool;

export @symbol("SDL_SetTextInputArea") fn SDL_SetTextInputArea(
	window: nullable *SDL_Window,
	rect: nullable *const SDL_Rect,
	cursor: int,
) bool;

export @symbol("SDL_StartTextInput") fn SDL_StartTextInput(
	window: nullable *SDL_Window,
) bool;

export @symbol("SDL_StartTextInputWithProperties") fn SDL_StartTextInputWithProperties(
	window: nullable *SDL_Window,
	props: SDL_PropertiesID,
) bool;

export @symbol("SDL_StopTextInput") fn SDL_StopTextInput(
	window: nullable *SDL_Window,
) bool;

export def SDL_TEXTINPUT_TYPE_NUMBER: int = 6;

export def SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_HIDDEN: int = 7;

export def SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_VISIBLE: int = 8;

export def SDL_TEXTINPUT_TYPE_TEXT: int = 0;

export def SDL_TEXTINPUT_TYPE_TEXT_EMAIL: int = 2;

export def SDL_TEXTINPUT_TYPE_TEXT_NAME: int = 1;

export def SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_HIDDEN: int = 4;

export def SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_VISIBLE: int = 5;

export def SDL_TEXTINPUT_TYPE_TEXT_USERNAME: int = 3;

export @symbol("SDL_TextInputActive") fn SDL_TextInputActive(
	window: nullable *SDL_Window,
) bool;

export type SDL_TextInputType = __enum_SDL_TextInputType;

export type __enum_SDL_Capitalization = uint;

export type __enum_SDL_TextInputType = uint;
