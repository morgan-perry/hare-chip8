use types::c;

export def SDL_ADDEVENT: int = 0;

export @symbol("SDL_AddEventWatch") fn SDL_AddEventWatch(
	filter: SDL_EventFilter,
	userdata: nullable *opaque,
) bool;

export type SDL_AudioDeviceEvent = __struct_SDL_AudioDeviceEvent;

export type SDL_CameraDeviceEvent = __struct_SDL_CameraDeviceEvent;

export type SDL_ClipboardEvent = __struct_SDL_ClipboardEvent;

export type SDL_CommonEvent = __struct_SDL_CommonEvent;

export type SDL_DisplayEvent = __struct_SDL_DisplayEvent;

export type SDL_DropEvent = __struct_SDL_DropEvent;

export def SDL_EVENT_AUDIO_DEVICE_ADDED = 4352;

export def SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED = 4354;

export def SDL_EVENT_AUDIO_DEVICE_REMOVED = 4353;

export def SDL_EVENT_CAMERA_DEVICE_ADDED = 5120;

export def SDL_EVENT_CAMERA_DEVICE_APPROVED = 5122;

export def SDL_EVENT_CAMERA_DEVICE_DENIED = 5123;

export def SDL_EVENT_CAMERA_DEVICE_REMOVED = 5121;

export def SDL_EVENT_CLIPBOARD_UPDATE = 2304;

export def SDL_EVENT_DID_ENTER_BACKGROUND = 260;

export def SDL_EVENT_DID_ENTER_FOREGROUND = 262;

export def SDL_EVENT_DISPLAY_ADDED = 338;

export def SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED = 343;

export def SDL_EVENT_DISPLAY_CURRENT_MODE_CHANGED = 342;

export def SDL_EVENT_DISPLAY_DESKTOP_MODE_CHANGED = 341;

export def SDL_EVENT_DISPLAY_FIRST = 337;

export def SDL_EVENT_DISPLAY_LAST = 343;

export def SDL_EVENT_DISPLAY_MOVED = 340;

export def SDL_EVENT_DISPLAY_ORIENTATION = 337;

export def SDL_EVENT_DISPLAY_REMOVED = 339;

export def SDL_EVENT_DROP_BEGIN = 4098;

export def SDL_EVENT_DROP_COMPLETE = 4099;

export def SDL_EVENT_DROP_FILE = 4096;

export def SDL_EVENT_DROP_POSITION = 4100;

export def SDL_EVENT_DROP_TEXT = 4097;

export def SDL_EVENT_ENUM_PADDING = 2147483647;

export def SDL_EVENT_FINGER_CANCELED = 1795;

export def SDL_EVENT_FINGER_DOWN = 1792;

export def SDL_EVENT_FINGER_MOTION = 1794;

export def SDL_EVENT_FINGER_UP = 1793;

export def SDL_EVENT_FIRST = 0;

export def SDL_EVENT_GAMEPAD_ADDED = 1619;

export def SDL_EVENT_GAMEPAD_AXIS_MOTION = 1616;

export def SDL_EVENT_GAMEPAD_BUTTON_DOWN = 1617;

export def SDL_EVENT_GAMEPAD_BUTTON_UP = 1618;

export def SDL_EVENT_GAMEPAD_REMAPPED = 1621;

export def SDL_EVENT_GAMEPAD_REMOVED = 1620;

export def SDL_EVENT_GAMEPAD_SENSOR_UPDATE = 1625;

export def SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED = 1627;

export def SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN = 1622;

export def SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION = 1623;

export def SDL_EVENT_GAMEPAD_TOUCHPAD_UP = 1624;

export def SDL_EVENT_GAMEPAD_UPDATE_COMPLETE = 1626;

export def SDL_EVENT_JOYSTICK_ADDED = 1541;

export def SDL_EVENT_JOYSTICK_AXIS_MOTION = 1536;

export def SDL_EVENT_JOYSTICK_BALL_MOTION = 1537;

export def SDL_EVENT_JOYSTICK_BATTERY_UPDATED = 1543;

export def SDL_EVENT_JOYSTICK_BUTTON_DOWN = 1539;

export def SDL_EVENT_JOYSTICK_BUTTON_UP = 1540;

export def SDL_EVENT_JOYSTICK_HAT_MOTION = 1538;

export def SDL_EVENT_JOYSTICK_REMOVED = 1542;

export def SDL_EVENT_JOYSTICK_UPDATE_COMPLETE = 1544;

export def SDL_EVENT_KEYBOARD_ADDED = 773;

export def SDL_EVENT_KEYBOARD_REMOVED = 774;

export def SDL_EVENT_KEYMAP_CHANGED = 772;

export def SDL_EVENT_KEY_DOWN = 768;

export def SDL_EVENT_KEY_UP = 769;

export def SDL_EVENT_LAST = 65535;

export def SDL_EVENT_LOCALE_CHANGED = 263;

export def SDL_EVENT_LOW_MEMORY = 258;

export def SDL_EVENT_MOUSE_ADDED = 1028;

export def SDL_EVENT_MOUSE_BUTTON_DOWN = 1025;

export def SDL_EVENT_MOUSE_BUTTON_UP = 1026;

export def SDL_EVENT_MOUSE_MOTION = 1024;

export def SDL_EVENT_MOUSE_REMOVED = 1029;

export def SDL_EVENT_MOUSE_WHEEL = 1027;

export def SDL_EVENT_PEN_AXIS = 4871;

export def SDL_EVENT_PEN_BUTTON_DOWN = 4868;

export def SDL_EVENT_PEN_BUTTON_UP = 4869;

export def SDL_EVENT_PEN_DOWN = 4866;

export def SDL_EVENT_PEN_MOTION = 4870;

export def SDL_EVENT_PEN_PROXIMITY_IN = 4864;

export def SDL_EVENT_PEN_PROXIMITY_OUT = 4865;

export def SDL_EVENT_PEN_UP = 4867;

export def SDL_EVENT_POLL_SENTINEL = 32512;

export def SDL_EVENT_PRIVATE0 = 16384;

export def SDL_EVENT_PRIVATE1 = 16385;

export def SDL_EVENT_PRIVATE2 = 16386;

export def SDL_EVENT_PRIVATE3 = 16387;

export def SDL_EVENT_QUIT = 256;

export def SDL_EVENT_RENDER_DEVICE_LOST = 8194;

export def SDL_EVENT_RENDER_DEVICE_RESET = 8193;

export def SDL_EVENT_RENDER_TARGETS_RESET = 8192;

export def SDL_EVENT_SENSOR_UPDATE = 4608;

export def SDL_EVENT_SYSTEM_THEME_CHANGED = 264;

export def SDL_EVENT_TERMINATING = 257;

export def SDL_EVENT_TEXT_EDITING = 770;

export def SDL_EVENT_TEXT_EDITING_CANDIDATES = 775;

export def SDL_EVENT_TEXT_INPUT = 771;

export def SDL_EVENT_USER = 32768;

export def SDL_EVENT_WILL_ENTER_BACKGROUND = 259;

export def SDL_EVENT_WILL_ENTER_FOREGROUND = 261;

export def SDL_EVENT_WINDOW_CLOSE_REQUESTED = 528;

export def SDL_EVENT_WINDOW_DESTROYED = 537;

export def SDL_EVENT_WINDOW_DISPLAY_CHANGED = 531;

export def SDL_EVENT_WINDOW_DISPLAY_SCALE_CHANGED = 532;

export def SDL_EVENT_WINDOW_ENTER_FULLSCREEN = 535;

export def SDL_EVENT_WINDOW_EXPOSED = 516;

export def SDL_EVENT_WINDOW_FIRST = 514;

export def SDL_EVENT_WINDOW_FOCUS_GAINED = 526;

export def SDL_EVENT_WINDOW_FOCUS_LOST = 527;

export def SDL_EVENT_WINDOW_HDR_STATE_CHANGED = 538;

export def SDL_EVENT_WINDOW_HIDDEN = 515;

export def SDL_EVENT_WINDOW_HIT_TEST = 529;

export def SDL_EVENT_WINDOW_ICCPROF_CHANGED = 530;

export def SDL_EVENT_WINDOW_LAST = 538;

export def SDL_EVENT_WINDOW_LEAVE_FULLSCREEN = 536;

export def SDL_EVENT_WINDOW_MAXIMIZED = 522;

export def SDL_EVENT_WINDOW_METAL_VIEW_RESIZED = 520;

export def SDL_EVENT_WINDOW_MINIMIZED = 521;

export def SDL_EVENT_WINDOW_MOUSE_ENTER = 524;

export def SDL_EVENT_WINDOW_MOUSE_LEAVE = 525;

export def SDL_EVENT_WINDOW_MOVED = 517;

export def SDL_EVENT_WINDOW_OCCLUDED = 534;

export def SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED = 519;

export def SDL_EVENT_WINDOW_RESIZED = 518;

export def SDL_EVENT_WINDOW_RESTORED = 523;

export def SDL_EVENT_WINDOW_SAFE_AREA_CHANGED = 533;

export def SDL_EVENT_WINDOW_SHOWN = 514;

export type SDL_Event = __union_SDL_Event;

export type SDL_EventAction = __enum_SDL_EventAction;

export @symbol("SDL_EventEnabled") fn SDL_EventEnabled(__type: u32) bool;

export type SDL_EventFilter = nullable *const fn(
	userdata: nullable *opaque,
	event: nullable *SDL_Event,
) bool;

export type SDL_EventType = __enum_SDL_EventType;

export @symbol("SDL_FilterEvents") fn SDL_FilterEvents(
	filter: SDL_EventFilter,
	userdata: nullable *opaque,
) void;

export @symbol("SDL_FlushEvent") fn SDL_FlushEvent(__type: u32) void;

export @symbol("SDL_FlushEvents") fn SDL_FlushEvents(
	minType: u32,
	maxType: u32,
) void;

export def SDL_GETEVENT: int = 2;

export type SDL_GamepadAxisEvent = __struct_SDL_GamepadAxisEvent;

export type SDL_GamepadButtonEvent = __struct_SDL_GamepadButtonEvent;

export type SDL_GamepadDeviceEvent = __struct_SDL_GamepadDeviceEvent;

export type SDL_GamepadSensorEvent = __struct_SDL_GamepadSensorEvent;

export type SDL_GamepadTouchpadEvent = __struct_SDL_GamepadTouchpadEvent;

export @symbol("SDL_GetEventFilter") fn SDL_GetEventFilter(
	filter: nullable *SDL_EventFilter,
	userdata: nullable *nullable *opaque,
) bool;

export @symbol("SDL_GetWindowFromEvent") fn SDL_GetWindowFromEvent(
	event: nullable *const SDL_Event,
) nullable *SDL_Window;

export @symbol("SDL_HasEvent") fn SDL_HasEvent(__type: u32) bool;

export @symbol("SDL_HasEvents") fn SDL_HasEvents(
	minType: u32,
	maxType: u32,
) bool;

export type SDL_JoyAxisEvent = __struct_SDL_JoyAxisEvent;

export type SDL_JoyBallEvent = __struct_SDL_JoyBallEvent;

export type SDL_JoyBatteryEvent = __struct_SDL_JoyBatteryEvent;

export type SDL_JoyButtonEvent = __struct_SDL_JoyButtonEvent;

export type SDL_JoyDeviceEvent = __struct_SDL_JoyDeviceEvent;

export type SDL_JoyHatEvent = __struct_SDL_JoyHatEvent;

export type SDL_KeyboardDeviceEvent = __struct_SDL_KeyboardDeviceEvent;

export type SDL_KeyboardEvent = __struct_SDL_KeyboardEvent;

export type SDL_MouseButtonEvent = __struct_SDL_MouseButtonEvent;

export type SDL_MouseDeviceEvent = __struct_SDL_MouseDeviceEvent;

export type SDL_MouseMotionEvent = __struct_SDL_MouseMotionEvent;

export type SDL_MouseWheelEvent = __struct_SDL_MouseWheelEvent;

export def SDL_PEEKEVENT: int = 1;

export @symbol("SDL_PeepEvents") fn SDL_PeepEvents(
	events: nullable *SDL_Event,
	numevents: int,
	action: SDL_EventAction,
	minType: u32,
	maxType: u32,
) int;

export type SDL_PenAxisEvent = __struct_SDL_PenAxisEvent;

export type SDL_PenButtonEvent = __struct_SDL_PenButtonEvent;

export type SDL_PenMotionEvent = __struct_SDL_PenMotionEvent;

export type SDL_PenProximityEvent = __struct_SDL_PenProximityEvent;

export type SDL_PenTouchEvent = __struct_SDL_PenTouchEvent;

export @symbol("SDL_PollEvent") fn SDL_PollEvent(
	event: nullable *SDL_Event,
) bool;

export @symbol("SDL_PumpEvents") fn SDL_PumpEvents() void;

export @symbol("SDL_PushEvent") fn SDL_PushEvent(
	event: nullable *SDL_Event,
) bool;

export type SDL_QuitEvent = __struct_SDL_QuitEvent;

export @symbol("SDL_RegisterEvents") fn SDL_RegisterEvents(
	numevents: int,
) u32;

export @symbol("SDL_RemoveEventWatch") fn SDL_RemoveEventWatch(
	filter: SDL_EventFilter,
	userdata: nullable *opaque,
) void;

export type SDL_RenderEvent = __struct_SDL_RenderEvent;

export type SDL_SensorEvent = __struct_SDL_SensorEvent;

export @symbol("SDL_SetEventEnabled") fn SDL_SetEventEnabled(
	__type: u32,
	enabled: bool,
) void;

export @symbol("SDL_SetEventFilter") fn SDL_SetEventFilter(
	filter: SDL_EventFilter,
	userdata: nullable *opaque,
) void;

export type SDL_TextEditingCandidatesEvent = __struct_SDL_TextEditingCandidatesEvent;

export type SDL_TextEditingEvent = __struct_SDL_TextEditingEvent;

export type SDL_TextInputEvent = __struct_SDL_TextInputEvent;

export type SDL_TouchFingerEvent = __struct_SDL_TouchFingerEvent;

export type SDL_UserEvent = __struct_SDL_UserEvent;

export @symbol("SDL_WaitEvent") fn SDL_WaitEvent(
	event: nullable *SDL_Event,
) bool;

export @symbol("SDL_WaitEventTimeout") fn SDL_WaitEventTimeout(
	event: nullable *SDL_Event,
	timeoutMS: i32,
) bool;

export type SDL_WindowEvent = __struct_SDL_WindowEvent;

export type __enum_SDL_EventAction = uint;

export type __enum_SDL_EventType = uint;

export type __struct_SDL_AudioDeviceEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_AudioDeviceID,
	recording: bool,
	padding1: u8,
	padding2: u8,
	padding3: u8,
};

export type __struct_SDL_CameraDeviceEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_CameraID,
};

export type __struct_SDL_ClipboardEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	owner: bool,
	num_mime_types: i32,
	mime_types: nullable *nullable *const c::char,
};

export type __struct_SDL_CommonEvent = struct {
	__type: u32,
	reserved: u32,
	timestamp: u64,
};

export type __struct_SDL_DisplayEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	displayID: SDL_DisplayID,
	data1: i32,
	data2: i32,
};

export type __struct_SDL_DropEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
	x: f32,
	y: f32,
	source: nullable *const c::char,
	data: nullable *const c::char,
};

export type __struct_SDL_GamepadAxisEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_JoystickID,
	axis: u8,
	padding1: u8,
	padding2: u8,
	padding3: u8,
	value: i16,
	padding4: u16,
};

export type __struct_SDL_GamepadButtonEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_JoystickID,
	button: u8,
	down: bool,
	padding1: u8,
	padding2: u8,
};

export type __struct_SDL_GamepadDeviceEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_JoystickID,
};

export type __struct_SDL_GamepadSensorEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_JoystickID,
	sensor: i32,
	data: [3]f32,
	sensor_timestamp: u64,
};

export type __struct_SDL_GamepadTouchpadEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_JoystickID,
	touchpad: i32,
	finger: i32,
	x: f32,
	y: f32,
	pressure: f32,
};

export type __struct_SDL_JoyAxisEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_JoystickID,
	axis: u8,
	padding1: u8,
	padding2: u8,
	padding3: u8,
	value: i16,
	padding4: u16,
};

export type __struct_SDL_JoyBallEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_JoystickID,
	ball: u8,
	padding1: u8,
	padding2: u8,
	padding3: u8,
	xrel: i16,
	yrel: i16,
};

export type __struct_SDL_JoyBatteryEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_JoystickID,
	state: SDL_PowerState,
	percent: int,
};

export type __struct_SDL_JoyButtonEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_JoystickID,
	button: u8,
	down: bool,
	padding1: u8,
	padding2: u8,
};

export type __struct_SDL_JoyDeviceEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_JoystickID,
};

export type __struct_SDL_JoyHatEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_JoystickID,
	hat: u8,
	value: u8,
	padding1: u8,
	padding2: u8,
};

export type __struct_SDL_KeyboardDeviceEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_KeyboardID,
};

export type __struct_SDL_KeyboardEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
	which: SDL_KeyboardID,
	scancode: SDL_Scancode,
	key: SDL_Keycode,
	mod: SDL_Keymod,
	raw: u16,
	down: bool,
	repeat: bool,
};

export type __struct_SDL_MouseButtonEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
	which: SDL_MouseID,
	button: u8,
	down: bool,
	clicks: u8,
	padding: u8,
	x: f32,
	y: f32,
};

export type __struct_SDL_MouseDeviceEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_MouseID,
};

export type __struct_SDL_MouseMotionEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
	which: SDL_MouseID,
	state: SDL_MouseButtonFlags,
	x: f32,
	y: f32,
	xrel: f32,
	yrel: f32,
};

export type __struct_SDL_MouseWheelEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
	which: SDL_MouseID,
	x: f32,
	y: f32,
	direction: SDL_MouseWheelDirection,
	mouse_x: f32,
	mouse_y: f32,
	integer_x: i32,
	integer_y: i32,
};

export type __struct_SDL_PenAxisEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
	which: SDL_PenID,
	pen_state: SDL_PenInputFlags,
	x: f32,
	y: f32,
	axis: SDL_PenAxis,
	value: f32,
};

export type __struct_SDL_PenButtonEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
	which: SDL_PenID,
	pen_state: SDL_PenInputFlags,
	x: f32,
	y: f32,
	button: u8,
	down: bool,
};

export type __struct_SDL_PenMotionEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
	which: SDL_PenID,
	pen_state: SDL_PenInputFlags,
	x: f32,
	y: f32,
};

export type __struct_SDL_PenProximityEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
	which: SDL_PenID,
};

export type __struct_SDL_PenTouchEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
	which: SDL_PenID,
	pen_state: SDL_PenInputFlags,
	x: f32,
	y: f32,
	eraser: bool,
	down: bool,
};

export type __struct_SDL_QuitEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
};

export type __struct_SDL_RenderEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
};

export type __struct_SDL_SensorEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	which: SDL_SensorID,
	data: [6]f32,
	sensor_timestamp: u64,
};

export type __struct_SDL_TextEditingCandidatesEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
	candidates: nullable *const nullable *const c::char,
	num_candidates: i32,
	selected_candidate: i32,
	horizontal: bool,
	padding1: u8,
	padding2: u8,
	padding3: u8,
};

export type __struct_SDL_TextEditingEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
	text: nullable *const c::char,
	start: i32,
	length: i32,
};

export type __struct_SDL_TextInputEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
	text: nullable *const c::char,
};

export type __struct_SDL_TouchFingerEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	touchID: SDL_TouchID,
	fingerID: SDL_FingerID,
	x: f32,
	y: f32,
	dx: f32,
	dy: f32,
	pressure: f32,
	windowID: SDL_WindowID,
};

export type __struct_SDL_UserEvent = struct {
	__type: u32,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
	code: i32,
	data1: nullable *opaque,
	data2: nullable *opaque,
};

export type __struct_SDL_WindowEvent = struct {
	__type: SDL_EventType,
	reserved: u32,
	timestamp: u64,
	windowID: SDL_WindowID,
	data1: i32,
	data2: i32,
};

export type __union_SDL_Event = union {
	__type: u32,
	common: SDL_CommonEvent,
	display: SDL_DisplayEvent,
	window: SDL_WindowEvent,
	kdevice: SDL_KeyboardDeviceEvent,
	key: SDL_KeyboardEvent,
	edit: SDL_TextEditingEvent,
	edit_candidates: SDL_TextEditingCandidatesEvent,
	text: SDL_TextInputEvent,
	mdevice: SDL_MouseDeviceEvent,
	motion: SDL_MouseMotionEvent,
	button: SDL_MouseButtonEvent,
	wheel: SDL_MouseWheelEvent,
	jdevice: SDL_JoyDeviceEvent,
	jaxis: SDL_JoyAxisEvent,
	jball: SDL_JoyBallEvent,
	jhat: SDL_JoyHatEvent,
	jbutton: SDL_JoyButtonEvent,
	jbattery: SDL_JoyBatteryEvent,
	gdevice: SDL_GamepadDeviceEvent,
	gaxis: SDL_GamepadAxisEvent,
	gbutton: SDL_GamepadButtonEvent,
	gtouchpad: SDL_GamepadTouchpadEvent,
	gsensor: SDL_GamepadSensorEvent,
	adevice: SDL_AudioDeviceEvent,
	cdevice: SDL_CameraDeviceEvent,
	sensor: SDL_SensorEvent,
	quit: SDL_QuitEvent,
	user: SDL_UserEvent,
	tfinger: SDL_TouchFingerEvent,
	pproximity: SDL_PenProximityEvent,
	ptouch: SDL_PenTouchEvent,
	pmotion: SDL_PenMotionEvent,
	pbutton: SDL_PenButtonEvent,
	paxis: SDL_PenAxisEvent,
	render: SDL_RenderEvent,
	drop: SDL_DropEvent,
	clipboard: SDL_ClipboardEvent,
	padding: [128]u8,
};
