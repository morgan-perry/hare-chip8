use types::c;

export @symbol("SDL_CreatePopupWindow") fn SDL_CreatePopupWindow(
	parent: nullable *SDL_Window,
	offset_x: int,
	offset_y: int,
	w: int,
	h: int,
	flags: SDL_WindowFlags,
) nullable *SDL_Window;

export @symbol("SDL_CreateWindow") fn SDL_CreateWindow(
	title: nullable *const c::char,
	w: int,
	h: int,
	flags: SDL_WindowFlags,
) nullable *SDL_Window;

export @symbol("SDL_CreateWindowWithProperties") fn SDL_CreateWindowWithProperties(
	props: SDL_PropertiesID,
) nullable *SDL_Window;

export @symbol("SDL_DestroyWindow") fn SDL_DestroyWindow(
	window: nullable *SDL_Window,
) void;

export @symbol("SDL_DestroyWindowSurface") fn SDL_DestroyWindowSurface(
	window: nullable *SDL_Window,
) bool;

export @symbol("SDL_DisableScreenSaver") fn SDL_DisableScreenSaver() bool;

export type SDL_DisplayID = u32;

export type SDL_DisplayMode = __struct_SDL_DisplayMode;

export type SDL_DisplayModeData = __struct_SDL_DisplayModeData;

export type SDL_DisplayOrientation = __enum_SDL_DisplayOrientation;

export type SDL_EGLAttrib = c::intptr;

export type SDL_EGLAttribArrayCallback = nullable *const fn(
	userdata: nullable *opaque,
) nullable *SDL_EGLAttrib;

export type SDL_EGLConfig = nullable *opaque;

export type SDL_EGLDisplay = nullable *opaque;

export type SDL_EGLIntArrayCallback = nullable *const fn(
	userdata: nullable *opaque,
	display: SDL_EGLDisplay,
	config: SDL_EGLConfig,
) nullable *SDL_EGLint;

export type SDL_EGLSurface = nullable *opaque;

export @symbol("SDL_EGL_GetCurrentConfig") fn SDL_EGL_GetCurrentConfig(
) SDL_EGLConfig;

export @symbol("SDL_EGL_GetCurrentDisplay") fn SDL_EGL_GetCurrentDisplay(
) SDL_EGLDisplay;

export @symbol("SDL_EGL_GetProcAddress") fn SDL_EGL_GetProcAddress(
	proc: nullable *const c::char,
) SDL_FunctionPointer;

export @symbol("SDL_EGL_GetWindowSurface") fn SDL_EGL_GetWindowSurface(
	window: nullable *SDL_Window,
) SDL_EGLSurface;

export @symbol("SDL_EGL_SetAttributeCallbacks") fn SDL_EGL_SetAttributeCallbacks(
	platformAttribCallback: SDL_EGLAttribArrayCallback,
	surfaceAttribCallback: SDL_EGLIntArrayCallback,
	contextAttribCallback: SDL_EGLIntArrayCallback,
	userdata: nullable *opaque,
) void;

export type SDL_EGLint = int;

export @symbol("SDL_EnableScreenSaver") fn SDL_EnableScreenSaver() bool;

export def SDL_FLASH_BRIEFLY: int = 1;

export def SDL_FLASH_CANCEL: int = 0;

export def SDL_FLASH_UNTIL_FOCUSED: int = 2;

export type SDL_FlashOperation = __enum_SDL_FlashOperation;

export @symbol("SDL_FlashWindow") fn SDL_FlashWindow(
	window: nullable *SDL_Window,
	operation: SDL_FlashOperation,
) bool;

export type SDL_GLAttr = __enum_SDL_GLAttr;

export type SDL_GLContext = nullable *__struct_SDL_GLContextState;

export type SDL_GLContextFlag = u32;

export type SDL_GLContextReleaseFlag = u32;

export type SDL_GLContextResetNotification = u32;

export type SDL_GLProfile = u32;

export def SDL_GL_ACCELERATED_VISUAL: int = 15;

export def SDL_GL_ACCUM_ALPHA_SIZE: int = 11;

export def SDL_GL_ACCUM_BLUE_SIZE: int = 10;

export def SDL_GL_ACCUM_GREEN_SIZE: int = 9;

export def SDL_GL_ACCUM_RED_SIZE: int = 8;

export def SDL_GL_ALPHA_SIZE: int = 3;

export def SDL_GL_BLUE_SIZE: int = 2;

export def SDL_GL_BUFFER_SIZE: int = 4;

export def SDL_GL_CONTEXT_FLAGS: int = 19;

export def SDL_GL_CONTEXT_MAJOR_VERSION: int = 17;

export def SDL_GL_CONTEXT_MINOR_VERSION: int = 18;

export def SDL_GL_CONTEXT_NO_ERROR: int = 25;

export def SDL_GL_CONTEXT_PROFILE_MASK: int = 20;

export def SDL_GL_CONTEXT_RELEASE_BEHAVIOR: int = 23;

export def SDL_GL_CONTEXT_RESET_NOTIFICATION: int = 24;

export @symbol("SDL_GL_CreateContext") fn SDL_GL_CreateContext(
	window: nullable *SDL_Window,
) SDL_GLContext;

export def SDL_GL_DEPTH_SIZE: int = 6;

export def SDL_GL_DOUBLEBUFFER: int = 5;

export @symbol("SDL_GL_DestroyContext") fn SDL_GL_DestroyContext(
	context: SDL_GLContext,
) bool;

export def SDL_GL_EGL_PLATFORM: int = 27;

export @symbol("SDL_GL_ExtensionSupported") fn SDL_GL_ExtensionSupported(
	extension: nullable *const c::char,
) bool;

export def SDL_GL_FLOATBUFFERS: int = 26;

export def SDL_GL_FRAMEBUFFER_SRGB_CAPABLE: int = 22;

export def SDL_GL_GREEN_SIZE: int = 1;

export @symbol("SDL_GL_GetAttribute") fn SDL_GL_GetAttribute(
	attr: SDL_GLAttr,
	value: nullable *int,
) bool;

export @symbol("SDL_GL_GetCurrentContext") fn SDL_GL_GetCurrentContext(
) SDL_GLContext;

export @symbol("SDL_GL_GetCurrentWindow") fn SDL_GL_GetCurrentWindow(
) nullable *SDL_Window;

export @symbol("SDL_GL_GetProcAddress") fn SDL_GL_GetProcAddress(
	proc: nullable *const c::char,
) SDL_FunctionPointer;

export @symbol("SDL_GL_GetSwapInterval") fn SDL_GL_GetSwapInterval(
	interval: nullable *int,
) bool;

export @symbol("SDL_GL_LoadLibrary") fn SDL_GL_LoadLibrary(
	path: nullable *const c::char,
) bool;

export def SDL_GL_MULTISAMPLEBUFFERS: int = 13;

export def SDL_GL_MULTISAMPLESAMPLES: int = 14;

export @symbol("SDL_GL_MakeCurrent") fn SDL_GL_MakeCurrent(
	window: nullable *SDL_Window,
	context: SDL_GLContext,
) bool;

export def SDL_GL_RED_SIZE: int = 0;

export def SDL_GL_RETAINED_BACKING: int = 16;

export @symbol("SDL_GL_ResetAttributes") fn SDL_GL_ResetAttributes() void;

export def SDL_GL_SHARE_WITH_CURRENT_CONTEXT: int = 21;

export def SDL_GL_STENCIL_SIZE: int = 7;

export def SDL_GL_STEREO: int = 12;

export @symbol("SDL_GL_SetAttribute") fn SDL_GL_SetAttribute(
	attr: SDL_GLAttr,
	value: int,
) bool;

export @symbol("SDL_GL_SetSwapInterval") fn SDL_GL_SetSwapInterval(
	interval: int,
) bool;

export @symbol("SDL_GL_SwapWindow") fn SDL_GL_SwapWindow(
	window: nullable *SDL_Window,
) bool;

export @symbol("SDL_GL_UnloadLibrary") fn SDL_GL_UnloadLibrary() void;

export @symbol("SDL_GetClosestFullscreenDisplayMode") fn SDL_GetClosestFullscreenDisplayMode(
	displayID: SDL_DisplayID,
	w: int,
	h: int,
	refresh_rate: f32,
	include_high_density_modes: bool,
	closest: nullable *SDL_DisplayMode,
) bool;

export @symbol("SDL_GetCurrentDisplayMode") fn SDL_GetCurrentDisplayMode(
	displayID: SDL_DisplayID,
) nullable *const SDL_DisplayMode;

export @symbol("SDL_GetCurrentDisplayOrientation") fn SDL_GetCurrentDisplayOrientation(
	displayID: SDL_DisplayID,
) SDL_DisplayOrientation;

export @symbol("SDL_GetCurrentVideoDriver") fn SDL_GetCurrentVideoDriver(
) nullable *const c::char;

export @symbol("SDL_GetDesktopDisplayMode") fn SDL_GetDesktopDisplayMode(
	displayID: SDL_DisplayID,
) nullable *const SDL_DisplayMode;

export @symbol("SDL_GetDisplayBounds") fn SDL_GetDisplayBounds(
	displayID: SDL_DisplayID,
	rect: nullable *SDL_Rect,
) bool;

export @symbol("SDL_GetDisplayContentScale") fn SDL_GetDisplayContentScale(
	displayID: SDL_DisplayID,
) f32;

export @symbol("SDL_GetDisplayForPoint") fn SDL_GetDisplayForPoint(
	point: nullable *const SDL_Point,
) SDL_DisplayID;

export @symbol("SDL_GetDisplayForRect") fn SDL_GetDisplayForRect(
	rect: nullable *const SDL_Rect,
) SDL_DisplayID;

export @symbol("SDL_GetDisplayForWindow") fn SDL_GetDisplayForWindow(
	window: nullable *SDL_Window,
) SDL_DisplayID;

export @symbol("SDL_GetDisplayName") fn SDL_GetDisplayName(
	displayID: SDL_DisplayID,
) nullable *const c::char;

export @symbol("SDL_GetDisplayProperties") fn SDL_GetDisplayProperties(
	displayID: SDL_DisplayID,
) SDL_PropertiesID;

export @symbol("SDL_GetDisplayUsableBounds") fn SDL_GetDisplayUsableBounds(
	displayID: SDL_DisplayID,
	rect: nullable *SDL_Rect,
) bool;

export @symbol("SDL_GetDisplays") fn SDL_GetDisplays(
	count: nullable *int,
) nullable *SDL_DisplayID;

export @symbol("SDL_GetFullscreenDisplayModes") fn SDL_GetFullscreenDisplayModes(
	displayID: SDL_DisplayID,
	count: nullable *int,
) nullable *nullable *SDL_DisplayMode;

export @symbol("SDL_GetGrabbedWindow") fn SDL_GetGrabbedWindow(
) nullable *SDL_Window;

export @symbol("SDL_GetNaturalDisplayOrientation") fn SDL_GetNaturalDisplayOrientation(
	displayID: SDL_DisplayID,
) SDL_DisplayOrientation;

export @symbol("SDL_GetNumVideoDrivers") fn SDL_GetNumVideoDrivers() int;

export @symbol("SDL_GetPrimaryDisplay") fn SDL_GetPrimaryDisplay(
) SDL_DisplayID;

export @symbol("SDL_GetSystemTheme") fn SDL_GetSystemTheme() SDL_SystemTheme;

export @symbol("SDL_GetVideoDriver") fn SDL_GetVideoDriver(
	index: int,
) nullable *const c::char;

export @symbol("SDL_GetWindowAspectRatio") fn SDL_GetWindowAspectRatio(
	window: nullable *SDL_Window,
	min_aspect: nullable *f32,
	max_aspect: nullable *f32,
) bool;

export @symbol("SDL_GetWindowBordersSize") fn SDL_GetWindowBordersSize(
	window: nullable *SDL_Window,
	top: nullable *int,
	left: nullable *int,
	bottom: nullable *int,
	right: nullable *int,
) bool;

export @symbol("SDL_GetWindowDisplayScale") fn SDL_GetWindowDisplayScale(
	window: nullable *SDL_Window,
) f32;

export @symbol("SDL_GetWindowFlags") fn SDL_GetWindowFlags(
	window: nullable *SDL_Window,
) SDL_WindowFlags;

export @symbol("SDL_GetWindowFromID") fn SDL_GetWindowFromID(
	id: SDL_WindowID,
) nullable *SDL_Window;

export @symbol("SDL_GetWindowFullscreenMode") fn SDL_GetWindowFullscreenMode(
	window: nullable *SDL_Window,
) nullable *const SDL_DisplayMode;

export @symbol("SDL_GetWindowICCProfile") fn SDL_GetWindowICCProfile(
	window: nullable *SDL_Window,
	__size: nullable *size,
) nullable *opaque;

export @symbol("SDL_GetWindowID") fn SDL_GetWindowID(
	window: nullable *SDL_Window,
) SDL_WindowID;

export @symbol("SDL_GetWindowKeyboardGrab") fn SDL_GetWindowKeyboardGrab(
	window: nullable *SDL_Window,
) bool;

export @symbol("SDL_GetWindowMaximumSize") fn SDL_GetWindowMaximumSize(
	window: nullable *SDL_Window,
	w: nullable *int,
	h: nullable *int,
) bool;

export @symbol("SDL_GetWindowMinimumSize") fn SDL_GetWindowMinimumSize(
	window: nullable *SDL_Window,
	w: nullable *int,
	h: nullable *int,
) bool;

export @symbol("SDL_GetWindowMouseGrab") fn SDL_GetWindowMouseGrab(
	window: nullable *SDL_Window,
) bool;

export @symbol("SDL_GetWindowMouseRect") fn SDL_GetWindowMouseRect(
	window: nullable *SDL_Window,
) nullable *const SDL_Rect;

export @symbol("SDL_GetWindowOpacity") fn SDL_GetWindowOpacity(
	window: nullable *SDL_Window,
) f32;

export @symbol("SDL_GetWindowParent") fn SDL_GetWindowParent(
	window: nullable *SDL_Window,
) nullable *SDL_Window;

export @symbol("SDL_GetWindowPixelDensity") fn SDL_GetWindowPixelDensity(
	window: nullable *SDL_Window,
) f32;

export @symbol("SDL_GetWindowPixelFormat") fn SDL_GetWindowPixelFormat(
	window: nullable *SDL_Window,
) SDL_PixelFormat;

export @symbol("SDL_GetWindowPosition") fn SDL_GetWindowPosition(
	window: nullable *SDL_Window,
	x: nullable *int,
	y: nullable *int,
) bool;

export @symbol("SDL_GetWindowProperties") fn SDL_GetWindowProperties(
	window: nullable *SDL_Window,
) SDL_PropertiesID;

export @symbol("SDL_GetWindowSafeArea") fn SDL_GetWindowSafeArea(
	window: nullable *SDL_Window,
	rect: nullable *SDL_Rect,
) bool;

export @symbol("SDL_GetWindowSize") fn SDL_GetWindowSize(
	window: nullable *SDL_Window,
	w: nullable *int,
	h: nullable *int,
) bool;

export @symbol("SDL_GetWindowSizeInPixels") fn SDL_GetWindowSizeInPixels(
	window: nullable *SDL_Window,
	w: nullable *int,
	h: nullable *int,
) bool;

export @symbol("SDL_GetWindowSurface") fn SDL_GetWindowSurface(
	window: nullable *SDL_Window,
) nullable *SDL_Surface;

export @symbol("SDL_GetWindowSurfaceVSync") fn SDL_GetWindowSurfaceVSync(
	window: nullable *SDL_Window,
	vsync: nullable *int,
) bool;

export @symbol("SDL_GetWindowTitle") fn SDL_GetWindowTitle(
	window: nullable *SDL_Window,
) nullable *const c::char;

export @symbol("SDL_GetWindows") fn SDL_GetWindows(
	count: nullable *int,
) nullable *nullable *SDL_Window;

export def SDL_HITTEST_DRAGGABLE: int = 1;

export def SDL_HITTEST_NORMAL: int = 0;

export def SDL_HITTEST_RESIZE_BOTTOM: int = 7;

export def SDL_HITTEST_RESIZE_BOTTOMLEFT: int = 8;

export def SDL_HITTEST_RESIZE_BOTTOMRIGHT: int = 6;

export def SDL_HITTEST_RESIZE_LEFT: int = 9;

export def SDL_HITTEST_RESIZE_RIGHT: int = 5;

export def SDL_HITTEST_RESIZE_TOP: int = 3;

export def SDL_HITTEST_RESIZE_TOPLEFT: int = 2;

export def SDL_HITTEST_RESIZE_TOPRIGHT: int = 4;

export @symbol("SDL_HideWindow") fn SDL_HideWindow(
	window: nullable *SDL_Window,
) bool;

export type SDL_HitTest = nullable *const fn(
	win: nullable *SDL_Window,
	area: nullable *const SDL_Point,
	data: nullable *opaque,
) SDL_HitTestResult;

export type SDL_HitTestResult = __enum_SDL_HitTestResult;

export @symbol("SDL_MaximizeWindow") fn SDL_MaximizeWindow(
	window: nullable *SDL_Window,
) bool;

export @symbol("SDL_MinimizeWindow") fn SDL_MinimizeWindow(
	window: nullable *SDL_Window,
) bool;

export def SDL_ORIENTATION_LANDSCAPE: int = 1;

export def SDL_ORIENTATION_LANDSCAPE_FLIPPED: int = 2;

export def SDL_ORIENTATION_PORTRAIT: int = 3;

export def SDL_ORIENTATION_PORTRAIT_FLIPPED: int = 4;

export def SDL_ORIENTATION_UNKNOWN: int = 0;

export @symbol("SDL_RaiseWindow") fn SDL_RaiseWindow(
	window: nullable *SDL_Window,
) bool;

export @symbol("SDL_RestoreWindow") fn SDL_RestoreWindow(
	window: nullable *SDL_Window,
) bool;

export def SDL_SYSTEM_THEME_DARK: int = 2;

export def SDL_SYSTEM_THEME_LIGHT: int = 1;

export def SDL_SYSTEM_THEME_UNKNOWN: int = 0;

export @symbol("SDL_ScreenSaverEnabled") fn SDL_ScreenSaverEnabled() bool;

export @symbol("SDL_SetWindowAlwaysOnTop") fn SDL_SetWindowAlwaysOnTop(
	window: nullable *SDL_Window,
	on_top: bool,
) bool;

export @symbol("SDL_SetWindowAspectRatio") fn SDL_SetWindowAspectRatio(
	window: nullable *SDL_Window,
	min_aspect: f32,
	max_aspect: f32,
) bool;

export @symbol("SDL_SetWindowBordered") fn SDL_SetWindowBordered(
	window: nullable *SDL_Window,
	bordered: bool,
) bool;

export @symbol("SDL_SetWindowFocusable") fn SDL_SetWindowFocusable(
	window: nullable *SDL_Window,
	focusable: bool,
) bool;

export @symbol("SDL_SetWindowFullscreen") fn SDL_SetWindowFullscreen(
	window: nullable *SDL_Window,
	fullscreen: bool,
) bool;

export @symbol("SDL_SetWindowFullscreenMode") fn SDL_SetWindowFullscreenMode(
	window: nullable *SDL_Window,
	mode: nullable *const SDL_DisplayMode,
) bool;

export @symbol("SDL_SetWindowHitTest") fn SDL_SetWindowHitTest(
	window: nullable *SDL_Window,
	callback: SDL_HitTest,
	callback_data: nullable *opaque,
) bool;

export @symbol("SDL_SetWindowIcon") fn SDL_SetWindowIcon(
	window: nullable *SDL_Window,
	icon: nullable *SDL_Surface,
) bool;

export @symbol("SDL_SetWindowKeyboardGrab") fn SDL_SetWindowKeyboardGrab(
	window: nullable *SDL_Window,
	grabbed: bool,
) bool;

export @symbol("SDL_SetWindowMaximumSize") fn SDL_SetWindowMaximumSize(
	window: nullable *SDL_Window,
	max_w: int,
	max_h: int,
) bool;

export @symbol("SDL_SetWindowMinimumSize") fn SDL_SetWindowMinimumSize(
	window: nullable *SDL_Window,
	min_w: int,
	min_h: int,
) bool;

export @symbol("SDL_SetWindowModal") fn SDL_SetWindowModal(
	window: nullable *SDL_Window,
	modal: bool,
) bool;

export @symbol("SDL_SetWindowMouseGrab") fn SDL_SetWindowMouseGrab(
	window: nullable *SDL_Window,
	grabbed: bool,
) bool;

export @symbol("SDL_SetWindowMouseRect") fn SDL_SetWindowMouseRect(
	window: nullable *SDL_Window,
	rect: nullable *const SDL_Rect,
) bool;

export @symbol("SDL_SetWindowOpacity") fn SDL_SetWindowOpacity(
	window: nullable *SDL_Window,
	opacity: f32,
) bool;

export @symbol("SDL_SetWindowParent") fn SDL_SetWindowParent(
	window: nullable *SDL_Window,
	parent: nullable *SDL_Window,
) bool;

export @symbol("SDL_SetWindowPosition") fn SDL_SetWindowPosition(
	window: nullable *SDL_Window,
	x: int,
	y: int,
) bool;

export @symbol("SDL_SetWindowResizable") fn SDL_SetWindowResizable(
	window: nullable *SDL_Window,
	resizable: bool,
) bool;

export @symbol("SDL_SetWindowShape") fn SDL_SetWindowShape(
	window: nullable *SDL_Window,
	shape: nullable *SDL_Surface,
) bool;

export @symbol("SDL_SetWindowSize") fn SDL_SetWindowSize(
	window: nullable *SDL_Window,
	w: int,
	h: int,
) bool;

export @symbol("SDL_SetWindowSurfaceVSync") fn SDL_SetWindowSurfaceVSync(
	window: nullable *SDL_Window,
	vsync: int,
) bool;

export @symbol("SDL_SetWindowTitle") fn SDL_SetWindowTitle(
	window: nullable *SDL_Window,
	title: nullable *const c::char,
) bool;

export @symbol("SDL_ShowWindow") fn SDL_ShowWindow(
	window: nullable *SDL_Window,
) bool;

export @symbol("SDL_ShowWindowSystemMenu") fn SDL_ShowWindowSystemMenu(
	window: nullable *SDL_Window,
	x: int,
	y: int,
) bool;

export @symbol("SDL_SyncWindow") fn SDL_SyncWindow(
	window: nullable *SDL_Window,
) bool;

export type SDL_SystemTheme = __enum_SDL_SystemTheme;

export @symbol("SDL_UpdateWindowSurface") fn SDL_UpdateWindowSurface(
	window: nullable *SDL_Window,
) bool;

export @symbol("SDL_UpdateWindowSurfaceRects") fn SDL_UpdateWindowSurfaceRects(
	window: nullable *SDL_Window,
	rects: nullable *const SDL_Rect,
	numrects: int,
) bool;

export type SDL_Window = __struct_SDL_Window;

export type SDL_WindowFlags = u64;

export @symbol("SDL_WindowHasSurface") fn SDL_WindowHasSurface(
	window: nullable *SDL_Window,
) bool;

export type SDL_WindowID = u32;

export type __enum_SDL_DisplayOrientation = uint;

export type __enum_SDL_FlashOperation = uint;

export type __enum_SDL_GLAttr = uint;

export type __enum_SDL_HitTestResult = uint;

export type __enum_SDL_SystemTheme = uint;

export type __struct_SDL_DisplayMode = struct {
	displayID: SDL_DisplayID,
	format: SDL_PixelFormat,
	w: int,
	h: int,
	pixel_density: f32,
	refresh_rate: f32,
	refresh_rate_numerator: int,
	refresh_rate_denominator: int,
	internal: nullable *SDL_DisplayModeData,
};

export type __struct_SDL_DisplayModeData = opaque;

export type __struct_SDL_GLContextState = opaque;

export type __struct_SDL_Window = opaque;
