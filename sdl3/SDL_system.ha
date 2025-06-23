export @symbol("SDL_GetSandbox") fn SDL_GetSandbox() SDL_Sandbox;

export @symbol("SDL_IsTV") fn SDL_IsTV() bool;

export @symbol("SDL_IsTablet") fn SDL_IsTablet() bool;

export @symbol("SDL_OnApplicationDidEnterBackground") fn SDL_OnApplicationDidEnterBackground(
) void;

export @symbol("SDL_OnApplicationDidEnterForeground") fn SDL_OnApplicationDidEnterForeground(
) void;

export @symbol("SDL_OnApplicationDidReceiveMemoryWarning") fn SDL_OnApplicationDidReceiveMemoryWarning(
) void;

export @symbol("SDL_OnApplicationWillEnterBackground") fn SDL_OnApplicationWillEnterBackground(
) void;

export @symbol("SDL_OnApplicationWillEnterForeground") fn SDL_OnApplicationWillEnterForeground(
) void;

export @symbol("SDL_OnApplicationWillTerminate") fn SDL_OnApplicationWillTerminate(
) void;

export def SDL_SANDBOX_FLATPAK: int = 2;

export def SDL_SANDBOX_MACOS: int = 4;

export def SDL_SANDBOX_NONE: int = 0;

export def SDL_SANDBOX_SNAP: int = 3;

export def SDL_SANDBOX_UNKNOWN_CONTAINER: int = 1;

export type SDL_Sandbox = __enum_SDL_Sandbox;

export @symbol("SDL_SetLinuxThreadPriority") fn SDL_SetLinuxThreadPriority(
	threadID: i64,
	priority: int,
) bool;

export @symbol("SDL_SetLinuxThreadPriorityAndPolicy") fn SDL_SetLinuxThreadPriorityAndPolicy(
	threadID: i64,
	sdlPriority: int,
	schedPolicy: int,
) bool;

export @symbol("SDL_SetX11EventHook") fn SDL_SetX11EventHook(
	callback: SDL_X11EventHook,
	userdata: nullable *opaque,
) void;

export type SDL_X11EventHook = nullable *const fn(
	userdata: nullable *opaque,
	xevent: nullable *XEvent,
) bool;

export type XEvent = __union__XEvent;

export type __enum_SDL_Sandbox = uint;

export type __union__XEvent = opaque;
