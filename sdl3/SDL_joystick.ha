use types::c;

export @symbol("SDL_AttachVirtualJoystick") fn SDL_AttachVirtualJoystick(
	desc: nullable *const SDL_VirtualJoystickDesc,
) SDL_JoystickID;

export @symbol("SDL_CloseJoystick") fn SDL_CloseJoystick(
	joystick: nullable *SDL_Joystick,
) void;

export @symbol("SDL_DetachVirtualJoystick") fn SDL_DetachVirtualJoystick(
	instance_id: SDL_JoystickID,
) bool;

export @symbol("SDL_GetJoystickAxis") fn SDL_GetJoystickAxis(
	joystick: nullable *SDL_Joystick,
	axis: int,
) i16;

export @symbol("SDL_GetJoystickAxisInitialState") fn SDL_GetJoystickAxisInitialState(
	joystick: nullable *SDL_Joystick,
	axis: int,
	state: nullable *i16,
) bool;

export @symbol("SDL_GetJoystickBall") fn SDL_GetJoystickBall(
	joystick: nullable *SDL_Joystick,
	ball: int,
	dx: nullable *int,
	dy: nullable *int,
) bool;

export @symbol("SDL_GetJoystickButton") fn SDL_GetJoystickButton(
	joystick: nullable *SDL_Joystick,
	button: int,
) bool;

export @symbol("SDL_GetJoystickConnectionState") fn SDL_GetJoystickConnectionState(
	joystick: nullable *SDL_Joystick,
) SDL_JoystickConnectionState;

export @symbol("SDL_GetJoystickFirmwareVersion") fn SDL_GetJoystickFirmwareVersion(
	joystick: nullable *SDL_Joystick,
) u16;

export @symbol("SDL_GetJoystickFromID") fn SDL_GetJoystickFromID(
	instance_id: SDL_JoystickID,
) nullable *SDL_Joystick;

export @symbol("SDL_GetJoystickFromPlayerIndex") fn SDL_GetJoystickFromPlayerIndex(
	player_index: int,
) nullable *SDL_Joystick;

export @symbol("SDL_GetJoystickGUID") fn SDL_GetJoystickGUID(
	joystick: nullable *SDL_Joystick,
) SDL_GUID;

export @symbol("SDL_GetJoystickGUIDForID") fn SDL_GetJoystickGUIDForID(
	instance_id: SDL_JoystickID,
) SDL_GUID;

export @symbol("SDL_GetJoystickGUIDInfo") fn SDL_GetJoystickGUIDInfo(
	guid: SDL_GUID,
	vendor: nullable *u16,
	product: nullable *u16,
	version: nullable *u16,
	crc16: nullable *u16,
) void;

export @symbol("SDL_GetJoystickHat") fn SDL_GetJoystickHat(
	joystick: nullable *SDL_Joystick,
	hat: int,
) u8;

export @symbol("SDL_GetJoystickID") fn SDL_GetJoystickID(
	joystick: nullable *SDL_Joystick,
) SDL_JoystickID;

export @symbol("SDL_GetJoystickName") fn SDL_GetJoystickName(
	joystick: nullable *SDL_Joystick,
) nullable *const c::char;

export @symbol("SDL_GetJoystickNameForID") fn SDL_GetJoystickNameForID(
	instance_id: SDL_JoystickID,
) nullable *const c::char;

export @symbol("SDL_GetJoystickPath") fn SDL_GetJoystickPath(
	joystick: nullable *SDL_Joystick,
) nullable *const c::char;

export @symbol("SDL_GetJoystickPathForID") fn SDL_GetJoystickPathForID(
	instance_id: SDL_JoystickID,
) nullable *const c::char;

export @symbol("SDL_GetJoystickPlayerIndex") fn SDL_GetJoystickPlayerIndex(
	joystick: nullable *SDL_Joystick,
) int;

export @symbol("SDL_GetJoystickPlayerIndexForID") fn SDL_GetJoystickPlayerIndexForID(
	instance_id: SDL_JoystickID,
) int;

export @symbol("SDL_GetJoystickPowerInfo") fn SDL_GetJoystickPowerInfo(
	joystick: nullable *SDL_Joystick,
	percent: nullable *int,
) SDL_PowerState;

export @symbol("SDL_GetJoystickProduct") fn SDL_GetJoystickProduct(
	joystick: nullable *SDL_Joystick,
) u16;

export @symbol("SDL_GetJoystickProductForID") fn SDL_GetJoystickProductForID(
	instance_id: SDL_JoystickID,
) u16;

export @symbol("SDL_GetJoystickProductVersion") fn SDL_GetJoystickProductVersion(
	joystick: nullable *SDL_Joystick,
) u16;

export @symbol("SDL_GetJoystickProductVersionForID") fn SDL_GetJoystickProductVersionForID(
	instance_id: SDL_JoystickID,
) u16;

export @symbol("SDL_GetJoystickProperties") fn SDL_GetJoystickProperties(
	joystick: nullable *SDL_Joystick,
) SDL_PropertiesID;

export @symbol("SDL_GetJoystickSerial") fn SDL_GetJoystickSerial(
	joystick: nullable *SDL_Joystick,
) nullable *const c::char;

export @symbol("SDL_GetJoystickType") fn SDL_GetJoystickType(
	joystick: nullable *SDL_Joystick,
) SDL_JoystickType;

export @symbol("SDL_GetJoystickTypeForID") fn SDL_GetJoystickTypeForID(
	instance_id: SDL_JoystickID,
) SDL_JoystickType;

export @symbol("SDL_GetJoystickVendor") fn SDL_GetJoystickVendor(
	joystick: nullable *SDL_Joystick,
) u16;

export @symbol("SDL_GetJoystickVendorForID") fn SDL_GetJoystickVendorForID(
	instance_id: SDL_JoystickID,
) u16;

export @symbol("SDL_GetJoysticks") fn SDL_GetJoysticks(
	count: nullable *int,
) nullable *SDL_JoystickID;

export @symbol("SDL_GetNumJoystickAxes") fn SDL_GetNumJoystickAxes(
	joystick: nullable *SDL_Joystick,
) int;

export @symbol("SDL_GetNumJoystickBalls") fn SDL_GetNumJoystickBalls(
	joystick: nullable *SDL_Joystick,
) int;

export @symbol("SDL_GetNumJoystickButtons") fn SDL_GetNumJoystickButtons(
	joystick: nullable *SDL_Joystick,
) int;

export @symbol("SDL_GetNumJoystickHats") fn SDL_GetNumJoystickHats(
	joystick: nullable *SDL_Joystick,
) int;

export @symbol("SDL_HasJoystick") fn SDL_HasJoystick() bool;

export @symbol("SDL_IsJoystickVirtual") fn SDL_IsJoystickVirtual(
	instance_id: SDL_JoystickID,
) bool;

export def SDL_JOYSTICK_CONNECTION_INVALID: int = -1;

export def SDL_JOYSTICK_CONNECTION_UNKNOWN: int = 0;

export def SDL_JOYSTICK_CONNECTION_WIRED: int = 1;

export def SDL_JOYSTICK_CONNECTION_WIRELESS: int = 2;

export def SDL_JOYSTICK_TYPE_ARCADE_PAD: int = 8;

export def SDL_JOYSTICK_TYPE_ARCADE_STICK: int = 3;

export def SDL_JOYSTICK_TYPE_COUNT: int = 10;

export def SDL_JOYSTICK_TYPE_DANCE_PAD: int = 5;

export def SDL_JOYSTICK_TYPE_DRUM_KIT: int = 7;

export def SDL_JOYSTICK_TYPE_FLIGHT_STICK: int = 4;

export def SDL_JOYSTICK_TYPE_GAMEPAD: int = 1;

export def SDL_JOYSTICK_TYPE_GUITAR: int = 6;

export def SDL_JOYSTICK_TYPE_THROTTLE: int = 9;

export def SDL_JOYSTICK_TYPE_UNKNOWN: int = 0;

export def SDL_JOYSTICK_TYPE_WHEEL: int = 2;

export type SDL_Joystick = __struct_SDL_Joystick;

export @symbol("SDL_JoystickConnected") fn SDL_JoystickConnected(
	joystick: nullable *SDL_Joystick,
) bool;

export type SDL_JoystickConnectionState = __enum_SDL_JoystickConnectionState;

export @symbol("SDL_JoystickEventsEnabled") fn SDL_JoystickEventsEnabled(
) bool;

export type SDL_JoystickID = u32;

export type SDL_JoystickType = __enum_SDL_JoystickType;

export @symbol("SDL_LockJoysticks") fn SDL_LockJoysticks() void;

export @symbol("SDL_OpenJoystick") fn SDL_OpenJoystick(
	instance_id: SDL_JoystickID,
) nullable *SDL_Joystick;

export @symbol("SDL_RumbleJoystick") fn SDL_RumbleJoystick(
	joystick: nullable *SDL_Joystick,
	low_frequency_rumble: u16,
	high_frequency_rumble: u16,
	duration_ms: u32,
) bool;

export @symbol("SDL_RumbleJoystickTriggers") fn SDL_RumbleJoystickTriggers(
	joystick: nullable *SDL_Joystick,
	left_rumble: u16,
	right_rumble: u16,
	duration_ms: u32,
) bool;

export @symbol("SDL_SendJoystickEffect") fn SDL_SendJoystickEffect(
	joystick: nullable *SDL_Joystick,
	data: nullable *const opaque,
	__size: int,
) bool;

export @symbol("SDL_SendJoystickVirtualSensorData") fn SDL_SendJoystickVirtualSensorData(
	joystick: nullable *SDL_Joystick,
	__type: SDL_SensorType,
	sensor_timestamp: u64,
	data: nullable *const f32,
	num_values: int,
) bool;

export @symbol("SDL_SetJoystickEventsEnabled") fn SDL_SetJoystickEventsEnabled(
	enabled: bool,
) void;

export @symbol("SDL_SetJoystickLED") fn SDL_SetJoystickLED(
	joystick: nullable *SDL_Joystick,
	red: u8,
	green: u8,
	blue: u8,
) bool;

export @symbol("SDL_SetJoystickPlayerIndex") fn SDL_SetJoystickPlayerIndex(
	joystick: nullable *SDL_Joystick,
	player_index: int,
) bool;

export @symbol("SDL_SetJoystickVirtualAxis") fn SDL_SetJoystickVirtualAxis(
	joystick: nullable *SDL_Joystick,
	axis: int,
	value: i16,
) bool;

export @symbol("SDL_SetJoystickVirtualBall") fn SDL_SetJoystickVirtualBall(
	joystick: nullable *SDL_Joystick,
	ball: int,
	xrel: i16,
	yrel: i16,
) bool;

export @symbol("SDL_SetJoystickVirtualButton") fn SDL_SetJoystickVirtualButton(
	joystick: nullable *SDL_Joystick,
	button: int,
	down: bool,
) bool;

export @symbol("SDL_SetJoystickVirtualHat") fn SDL_SetJoystickVirtualHat(
	joystick: nullable *SDL_Joystick,
	hat: int,
	value: u8,
) bool;

export @symbol("SDL_SetJoystickVirtualTouchpad") fn SDL_SetJoystickVirtualTouchpad(
	joystick: nullable *SDL_Joystick,
	touchpad: int,
	finger: int,
	down: bool,
	x: f32,
	y: f32,
	pressure: f32,
) bool;

export @symbol("SDL_UnlockJoysticks") fn SDL_UnlockJoysticks() void;

export @symbol("SDL_UpdateJoysticks") fn SDL_UpdateJoysticks() void;

export type SDL_VirtualJoystickDesc = __struct_SDL_VirtualJoystickDesc;

export type SDL_VirtualJoystickSensorDesc = __struct_SDL_VirtualJoystickSensorDesc;

export type SDL_VirtualJoystickTouchpadDesc = __struct_SDL_VirtualJoystickTouchpadDesc;

export type __enum_SDL_JoystickConnectionState = int;

export type __enum_SDL_JoystickType = uint;

export type __struct_SDL_Joystick = opaque;

export type __struct_SDL_VirtualJoystickDesc = struct {
	version: u32,
	__type: u16,
	padding: u16,
	vendor_id: u16,
	product_id: u16,
	naxes: u16,
	nbuttons: u16,
	nballs: u16,
	nhats: u16,
	ntouchpads: u16,
	nsensors: u16,
	padding2: [2]u16,
	button_mask: u32,
	axis_mask: u32,
	name: nullable *const c::char,
	touchpads: nullable *const SDL_VirtualJoystickTouchpadDesc,
	sensors: nullable *const SDL_VirtualJoystickSensorDesc,
	userdata: nullable *opaque,
	Update: nullable *const fn(userdata: nullable *opaque) void,
	SetPlayerIndex: nullable *const fn(
		userdata: nullable *opaque,
		player_index: int,
	) void,
	Rumble: nullable *const fn(
		userdata: nullable *opaque,
		low_frequency_rumble: u16,
		high_frequency_rumble: u16,
	) bool,
	RumbleTriggers: nullable *const fn(
		userdata: nullable *opaque,
		left_rumble: u16,
		right_rumble: u16,
	) bool,
	SetLED: nullable *const fn(
		userdata: nullable *opaque,
		red: u8,
		green: u8,
		blue: u8,
	) bool,
	SendEffect: nullable *const fn(
		userdata: nullable *opaque,
		data: nullable *const opaque,
		__size: int,
	) bool,
	SetSensorsEnabled: nullable *const fn(
		userdata: nullable *opaque,
		enabled: bool,
	) bool,
	Cleanup: nullable *const fn(userdata: nullable *opaque) void,
};

export type __struct_SDL_VirtualJoystickSensorDesc = struct {
	__type: SDL_SensorType,
	rate: f32,
};

export type __struct_SDL_VirtualJoystickTouchpadDesc = struct {
	nfingers: u16,
	padding: [3]u16,
};
