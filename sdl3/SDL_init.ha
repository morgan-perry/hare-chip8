use types::c;

export def SDL_APP_CONTINUE: int = 0;

export def SDL_APP_FAILURE: int = 2;

export def SDL_APP_SUCCESS: int = 1;

export type SDL_AppEvent_func = nullable *const fn(
	appstate: nullable *opaque,
	event: nullable *SDL_Event,
) SDL_AppResult;

export type SDL_AppInit_func = nullable *const fn(
	appstate: nullable *nullable *opaque,
	argc: int,
	argv: nullable *nullable *c::char,
) SDL_AppResult;

export type SDL_AppIterate_func = nullable *const fn(
	appstate: nullable *opaque,
) SDL_AppResult;

export type SDL_AppQuit_func = nullable *const fn(
	appstate: nullable *opaque,
	result: SDL_AppResult,
) void;

export type SDL_AppResult = __enum_SDL_AppResult;

export @symbol("SDL_GetAppMetadataProperty") fn SDL_GetAppMetadataProperty(
	name: nullable *const c::char,
) nullable *const c::char;

export @symbol("SDL_Init") fn SDL_Init(flags: SDL_InitFlags) bool;

export type SDL_InitFlags = u32;

export def SDL_INIT_AUDIO = 0x00000010;
export def SDL_INIT_VIDEO = 0x00000020;
export def SDL_INIT_JOYSTICK = 0x00000200;
export def SDL_INIT_HAPTIC = 0x00001000;
export def SDL_INIT_GAMEPAD = 0x00002000;
export def SDL_INIT_EVENTS = 0x00004000;
export def SDL_INIT_SENSOR = 0x00008000;
export def SDL_INIT_CAMERA = 0x00010000;

export @symbol("SDL_InitSubSystem") fn SDL_InitSubSystem(
	flags: SDL_InitFlags,
) bool;

export @symbol("SDL_IsMainThread") fn SDL_IsMainThread() bool;

export type SDL_MainThreadCallback = nullable *const fn(
	userdata: nullable *opaque,
) void;

export @symbol("SDL_Quit") fn SDL_Quit() void;

export @symbol("SDL_QuitSubSystem") fn SDL_QuitSubSystem(
	flags: SDL_InitFlags,
) void;

export @symbol("SDL_RunOnMainThread") fn SDL_RunOnMainThread(
	callback: SDL_MainThreadCallback,
	userdata: nullable *opaque,
	wait_complete: bool,
) bool;

export @symbol("SDL_SetAppMetadata") fn SDL_SetAppMetadata(
	appname: nullable *const c::char,
	appversion: nullable *const c::char,
	appidentifier: nullable *const c::char,
) bool;

export @symbol("SDL_SetAppMetadataProperty") fn SDL_SetAppMetadataProperty(
	name: nullable *const c::char,
	value: nullable *const c::char,
) bool;

export @symbol("SDL_WasInit") fn SDL_WasInit(
	flags: SDL_InitFlags,
) SDL_InitFlags;

export type __enum_SDL_AppResult = uint;
