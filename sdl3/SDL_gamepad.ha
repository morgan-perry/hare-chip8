use types::c;

export @symbol("SDL_AddGamepadMapping") fn SDL_AddGamepadMapping(
	mapping: nullable *const c::char,
) int;

export @symbol("SDL_AddGamepadMappingsFromFile") fn SDL_AddGamepadMappingsFromFile(
	file: nullable *const c::char,
) int;

export @symbol("SDL_AddGamepadMappingsFromIO") fn SDL_AddGamepadMappingsFromIO(
	src: nullable *SDL_IOStream,
	closeio: bool,
) int;

export @symbol("SDL_CloseGamepad") fn SDL_CloseGamepad(
	gamepad: nullable *SDL_Gamepad,
) void;

export def SDL_GAMEPAD_AXIS_COUNT: int = 6;

export def SDL_GAMEPAD_AXIS_INVALID: int = -1;

export def SDL_GAMEPAD_AXIS_LEFTX: int = 0;

export def SDL_GAMEPAD_AXIS_LEFTY: int = 1;

export def SDL_GAMEPAD_AXIS_LEFT_TRIGGER: int = 4;

export def SDL_GAMEPAD_AXIS_RIGHTX: int = 2;

export def SDL_GAMEPAD_AXIS_RIGHTY: int = 3;

export def SDL_GAMEPAD_AXIS_RIGHT_TRIGGER: int = 5;

export def SDL_GAMEPAD_BINDTYPE_AXIS: int = 2;

export def SDL_GAMEPAD_BINDTYPE_BUTTON: int = 1;

export def SDL_GAMEPAD_BINDTYPE_HAT: int = 3;

export def SDL_GAMEPAD_BINDTYPE_NONE: int = 0;

export def SDL_GAMEPAD_BUTTON_BACK: int = 4;

export def SDL_GAMEPAD_BUTTON_COUNT: int = 26;

export def SDL_GAMEPAD_BUTTON_DPAD_DOWN: int = 12;

export def SDL_GAMEPAD_BUTTON_DPAD_LEFT: int = 13;

export def SDL_GAMEPAD_BUTTON_DPAD_RIGHT: int = 14;

export def SDL_GAMEPAD_BUTTON_DPAD_UP: int = 11;

export def SDL_GAMEPAD_BUTTON_EAST: int = 1;

export def SDL_GAMEPAD_BUTTON_GUIDE: int = 5;

export def SDL_GAMEPAD_BUTTON_INVALID: int = -1;

export def SDL_GAMEPAD_BUTTON_LABEL_A: int = 1;

export def SDL_GAMEPAD_BUTTON_LABEL_B: int = 2;

export def SDL_GAMEPAD_BUTTON_LABEL_CIRCLE: int = 6;

export def SDL_GAMEPAD_BUTTON_LABEL_CROSS: int = 5;

export def SDL_GAMEPAD_BUTTON_LABEL_SQUARE: int = 7;

export def SDL_GAMEPAD_BUTTON_LABEL_TRIANGLE: int = 8;

export def SDL_GAMEPAD_BUTTON_LABEL_UNKNOWN: int = 0;

export def SDL_GAMEPAD_BUTTON_LABEL_X: int = 3;

export def SDL_GAMEPAD_BUTTON_LABEL_Y: int = 4;

export def SDL_GAMEPAD_BUTTON_LEFT_PADDLE1: int = 17;

export def SDL_GAMEPAD_BUTTON_LEFT_PADDLE2: int = 19;

export def SDL_GAMEPAD_BUTTON_LEFT_SHOULDER: int = 9;

export def SDL_GAMEPAD_BUTTON_LEFT_STICK: int = 7;

export def SDL_GAMEPAD_BUTTON_MISC1: int = 15;

export def SDL_GAMEPAD_BUTTON_MISC2: int = 21;

export def SDL_GAMEPAD_BUTTON_MISC3: int = 22;

export def SDL_GAMEPAD_BUTTON_MISC4: int = 23;

export def SDL_GAMEPAD_BUTTON_MISC5: int = 24;

export def SDL_GAMEPAD_BUTTON_MISC6: int = 25;

export def SDL_GAMEPAD_BUTTON_NORTH: int = 3;

export def SDL_GAMEPAD_BUTTON_RIGHT_PADDLE1: int = 16;

export def SDL_GAMEPAD_BUTTON_RIGHT_PADDLE2: int = 18;

export def SDL_GAMEPAD_BUTTON_RIGHT_SHOULDER: int = 10;

export def SDL_GAMEPAD_BUTTON_RIGHT_STICK: int = 8;

export def SDL_GAMEPAD_BUTTON_SOUTH: int = 0;

export def SDL_GAMEPAD_BUTTON_START: int = 6;

export def SDL_GAMEPAD_BUTTON_TOUCHPAD: int = 20;

export def SDL_GAMEPAD_BUTTON_WEST: int = 2;

export def SDL_GAMEPAD_TYPE_COUNT: int = 11;

export def SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_LEFT: int = 8;

export def SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_PAIR: int = 10;

export def SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT: int = 9;

export def SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_PRO: int = 7;

export def SDL_GAMEPAD_TYPE_PS3: int = 4;

export def SDL_GAMEPAD_TYPE_PS4: int = 5;

export def SDL_GAMEPAD_TYPE_PS5: int = 6;

export def SDL_GAMEPAD_TYPE_STANDARD: int = 1;

export def SDL_GAMEPAD_TYPE_UNKNOWN: int = 0;

export def SDL_GAMEPAD_TYPE_XBOX360: int = 2;

export def SDL_GAMEPAD_TYPE_XBOXONE: int = 3;

export type SDL_Gamepad = __struct_SDL_Gamepad;

export type SDL_GamepadAxis = __enum_SDL_GamepadAxis;

export type SDL_GamepadBinding = __struct_SDL_GamepadBinding;

export type SDL_GamepadBindingType = __enum_SDL_GamepadBindingType;

export type SDL_GamepadButton = __enum_SDL_GamepadButton;

export type SDL_GamepadButtonLabel = __enum_SDL_GamepadButtonLabel;

export @symbol("SDL_GamepadConnected") fn SDL_GamepadConnected(
	gamepad: nullable *SDL_Gamepad,
) bool;

export @symbol("SDL_GamepadEventsEnabled") fn SDL_GamepadEventsEnabled() bool;

export @symbol("SDL_GamepadHasAxis") fn SDL_GamepadHasAxis(
	gamepad: nullable *SDL_Gamepad,
	axis: SDL_GamepadAxis,
) bool;

export @symbol("SDL_GamepadHasButton") fn SDL_GamepadHasButton(
	gamepad: nullable *SDL_Gamepad,
	button: SDL_GamepadButton,
) bool;

export @symbol("SDL_GamepadHasSensor") fn SDL_GamepadHasSensor(
	gamepad: nullable *SDL_Gamepad,
	__type: SDL_SensorType,
) bool;

export @symbol("SDL_GamepadSensorEnabled") fn SDL_GamepadSensorEnabled(
	gamepad: nullable *SDL_Gamepad,
	__type: SDL_SensorType,
) bool;

export type SDL_GamepadType = __enum_SDL_GamepadType;

export @symbol("SDL_GetGamepadAppleSFSymbolsNameForAxis") fn SDL_GetGamepadAppleSFSymbolsNameForAxis(
	gamepad: nullable *SDL_Gamepad,
	axis: SDL_GamepadAxis,
) nullable *const c::char;

export @symbol("SDL_GetGamepadAppleSFSymbolsNameForButton") fn SDL_GetGamepadAppleSFSymbolsNameForButton(
	gamepad: nullable *SDL_Gamepad,
	button: SDL_GamepadButton,
) nullable *const c::char;

export @symbol("SDL_GetGamepadAxis") fn SDL_GetGamepadAxis(
	gamepad: nullable *SDL_Gamepad,
	axis: SDL_GamepadAxis,
) i16;

export @symbol("SDL_GetGamepadAxisFromString") fn SDL_GetGamepadAxisFromString(
	__str: nullable *const c::char,
) SDL_GamepadAxis;

export @symbol("SDL_GetGamepadBindings") fn SDL_GetGamepadBindings(
	gamepad: nullable *SDL_Gamepad,
	count: nullable *int,
) nullable *nullable *SDL_GamepadBinding;

export @symbol("SDL_GetGamepadButton") fn SDL_GetGamepadButton(
	gamepad: nullable *SDL_Gamepad,
	button: SDL_GamepadButton,
) bool;

export @symbol("SDL_GetGamepadButtonFromString") fn SDL_GetGamepadButtonFromString(
	__str: nullable *const c::char,
) SDL_GamepadButton;

export @symbol("SDL_GetGamepadButtonLabel") fn SDL_GetGamepadButtonLabel(
	gamepad: nullable *SDL_Gamepad,
	button: SDL_GamepadButton,
) SDL_GamepadButtonLabel;

export @symbol("SDL_GetGamepadButtonLabelForType") fn SDL_GetGamepadButtonLabelForType(
	__type: SDL_GamepadType,
	button: SDL_GamepadButton,
) SDL_GamepadButtonLabel;

export @symbol("SDL_GetGamepadConnectionState") fn SDL_GetGamepadConnectionState(
	gamepad: nullable *SDL_Gamepad,
) SDL_JoystickConnectionState;

export @symbol("SDL_GetGamepadFirmwareVersion") fn SDL_GetGamepadFirmwareVersion(
	gamepad: nullable *SDL_Gamepad,
) u16;

export @symbol("SDL_GetGamepadFromID") fn SDL_GetGamepadFromID(
	instance_id: SDL_JoystickID,
) nullable *SDL_Gamepad;

export @symbol("SDL_GetGamepadFromPlayerIndex") fn SDL_GetGamepadFromPlayerIndex(
	player_index: int,
) nullable *SDL_Gamepad;

export @symbol("SDL_GetGamepadGUIDForID") fn SDL_GetGamepadGUIDForID(
	instance_id: SDL_JoystickID,
) SDL_GUID;

export @symbol("SDL_GetGamepadID") fn SDL_GetGamepadID(
	gamepad: nullable *SDL_Gamepad,
) SDL_JoystickID;

export @symbol("SDL_GetGamepadJoystick") fn SDL_GetGamepadJoystick(
	gamepad: nullable *SDL_Gamepad,
) nullable *SDL_Joystick;

export @symbol("SDL_GetGamepadMapping") fn SDL_GetGamepadMapping(
	gamepad: nullable *SDL_Gamepad,
) nullable *c::char;

export @symbol("SDL_GetGamepadMappingForGUID") fn SDL_GetGamepadMappingForGUID(
	guid: SDL_GUID,
) nullable *c::char;

export @symbol("SDL_GetGamepadMappingForID") fn SDL_GetGamepadMappingForID(
	instance_id: SDL_JoystickID,
) nullable *c::char;

export @symbol("SDL_GetGamepadMappings") fn SDL_GetGamepadMappings(
	count: nullable *int,
) nullable *nullable *c::char;

export @symbol("SDL_GetGamepadName") fn SDL_GetGamepadName(
	gamepad: nullable *SDL_Gamepad,
) nullable *const c::char;

export @symbol("SDL_GetGamepadNameForID") fn SDL_GetGamepadNameForID(
	instance_id: SDL_JoystickID,
) nullable *const c::char;

export @symbol("SDL_GetGamepadPath") fn SDL_GetGamepadPath(
	gamepad: nullable *SDL_Gamepad,
) nullable *const c::char;

export @symbol("SDL_GetGamepadPathForID") fn SDL_GetGamepadPathForID(
	instance_id: SDL_JoystickID,
) nullable *const c::char;

export @symbol("SDL_GetGamepadPlayerIndex") fn SDL_GetGamepadPlayerIndex(
	gamepad: nullable *SDL_Gamepad,
) int;

export @symbol("SDL_GetGamepadPlayerIndexForID") fn SDL_GetGamepadPlayerIndexForID(
	instance_id: SDL_JoystickID,
) int;

export @symbol("SDL_GetGamepadPowerInfo") fn SDL_GetGamepadPowerInfo(
	gamepad: nullable *SDL_Gamepad,
	percent: nullable *int,
) SDL_PowerState;

export @symbol("SDL_GetGamepadProduct") fn SDL_GetGamepadProduct(
	gamepad: nullable *SDL_Gamepad,
) u16;

export @symbol("SDL_GetGamepadProductForID") fn SDL_GetGamepadProductForID(
	instance_id: SDL_JoystickID,
) u16;

export @symbol("SDL_GetGamepadProductVersion") fn SDL_GetGamepadProductVersion(
	gamepad: nullable *SDL_Gamepad,
) u16;

export @symbol("SDL_GetGamepadProductVersionForID") fn SDL_GetGamepadProductVersionForID(
	instance_id: SDL_JoystickID,
) u16;

export @symbol("SDL_GetGamepadProperties") fn SDL_GetGamepadProperties(
	gamepad: nullable *SDL_Gamepad,
) SDL_PropertiesID;

export @symbol("SDL_GetGamepadSensorData") fn SDL_GetGamepadSensorData(
	gamepad: nullable *SDL_Gamepad,
	__type: SDL_SensorType,
	data: nullable *f32,
	num_values: int,
) bool;

export @symbol("SDL_GetGamepadSensorDataRate") fn SDL_GetGamepadSensorDataRate(
	gamepad: nullable *SDL_Gamepad,
	__type: SDL_SensorType,
) f32;

export @symbol("SDL_GetGamepadSerial") fn SDL_GetGamepadSerial(
	gamepad: nullable *SDL_Gamepad,
) nullable *const c::char;

export @symbol("SDL_GetGamepadSteamHandle") fn SDL_GetGamepadSteamHandle(
	gamepad: nullable *SDL_Gamepad,
) u64;

export @symbol("SDL_GetGamepadStringForAxis") fn SDL_GetGamepadStringForAxis(
	axis: SDL_GamepadAxis,
) nullable *const c::char;

export @symbol("SDL_GetGamepadStringForButton") fn SDL_GetGamepadStringForButton(
	button: SDL_GamepadButton,
) nullable *const c::char;

export @symbol("SDL_GetGamepadStringForType") fn SDL_GetGamepadStringForType(
	__type: SDL_GamepadType,
) nullable *const c::char;

export @symbol("SDL_GetGamepadTouchpadFinger") fn SDL_GetGamepadTouchpadFinger(
	gamepad: nullable *SDL_Gamepad,
	touchpad: int,
	finger: int,
	down: nullable *bool,
	x: nullable *f32,
	y: nullable *f32,
	pressure: nullable *f32,
) bool;

export @symbol("SDL_GetGamepadType") fn SDL_GetGamepadType(
	gamepad: nullable *SDL_Gamepad,
) SDL_GamepadType;

export @symbol("SDL_GetGamepadTypeForID") fn SDL_GetGamepadTypeForID(
	instance_id: SDL_JoystickID,
) SDL_GamepadType;

export @symbol("SDL_GetGamepadTypeFromString") fn SDL_GetGamepadTypeFromString(
	__str: nullable *const c::char,
) SDL_GamepadType;

export @symbol("SDL_GetGamepadVendor") fn SDL_GetGamepadVendor(
	gamepad: nullable *SDL_Gamepad,
) u16;

export @symbol("SDL_GetGamepadVendorForID") fn SDL_GetGamepadVendorForID(
	instance_id: SDL_JoystickID,
) u16;

export @symbol("SDL_GetGamepads") fn SDL_GetGamepads(
	count: nullable *int,
) nullable *SDL_JoystickID;

export @symbol("SDL_GetNumGamepadTouchpadFingers") fn SDL_GetNumGamepadTouchpadFingers(
	gamepad: nullable *SDL_Gamepad,
	touchpad: int,
) int;

export @symbol("SDL_GetNumGamepadTouchpads") fn SDL_GetNumGamepadTouchpads(
	gamepad: nullable *SDL_Gamepad,
) int;

export @symbol("SDL_GetRealGamepadType") fn SDL_GetRealGamepadType(
	gamepad: nullable *SDL_Gamepad,
) SDL_GamepadType;

export @symbol("SDL_GetRealGamepadTypeForID") fn SDL_GetRealGamepadTypeForID(
	instance_id: SDL_JoystickID,
) SDL_GamepadType;

export @symbol("SDL_HasGamepad") fn SDL_HasGamepad() bool;

export @symbol("SDL_IsGamepad") fn SDL_IsGamepad(
	instance_id: SDL_JoystickID,
) bool;

export @symbol("SDL_OpenGamepad") fn SDL_OpenGamepad(
	instance_id: SDL_JoystickID,
) nullable *SDL_Gamepad;

export @symbol("SDL_ReloadGamepadMappings") fn SDL_ReloadGamepadMappings(
) bool;

export @symbol("SDL_RumbleGamepad") fn SDL_RumbleGamepad(
	gamepad: nullable *SDL_Gamepad,
	low_frequency_rumble: u16,
	high_frequency_rumble: u16,
	duration_ms: u32,
) bool;

export @symbol("SDL_RumbleGamepadTriggers") fn SDL_RumbleGamepadTriggers(
	gamepad: nullable *SDL_Gamepad,
	left_rumble: u16,
	right_rumble: u16,
	duration_ms: u32,
) bool;

export @symbol("SDL_SendGamepadEffect") fn SDL_SendGamepadEffect(
	gamepad: nullable *SDL_Gamepad,
	data: nullable *const opaque,
	__size: int,
) bool;

export @symbol("SDL_SetGamepadEventsEnabled") fn SDL_SetGamepadEventsEnabled(
	enabled: bool,
) void;

export @symbol("SDL_SetGamepadLED") fn SDL_SetGamepadLED(
	gamepad: nullable *SDL_Gamepad,
	red: u8,
	green: u8,
	blue: u8,
) bool;

export @symbol("SDL_SetGamepadMapping") fn SDL_SetGamepadMapping(
	instance_id: SDL_JoystickID,
	mapping: nullable *const c::char,
) bool;

export @symbol("SDL_SetGamepadPlayerIndex") fn SDL_SetGamepadPlayerIndex(
	gamepad: nullable *SDL_Gamepad,
	player_index: int,
) bool;

export @symbol("SDL_SetGamepadSensorEnabled") fn SDL_SetGamepadSensorEnabled(
	gamepad: nullable *SDL_Gamepad,
	__type: SDL_SensorType,
	enabled: bool,
) bool;

export @symbol("SDL_UpdateGamepads") fn SDL_UpdateGamepads() void;

export type __enum_SDL_GamepadAxis = int;

export type __enum_SDL_GamepadBindingType = uint;

export type __enum_SDL_GamepadButton = int;

export type __enum_SDL_GamepadButtonLabel = uint;

export type __enum_SDL_GamepadType = uint;

export type __struct_SDL_Gamepad = opaque;

export type __struct_SDL_GamepadBinding = struct {
	input_type: SDL_GamepadBindingType,
	input: union {
		button: int,
		axis: struct {
			axis: int,
			axis_min: int,
			axis_max: int,
		},
		hat: struct {
			hat: int,
			hat_mask: int,
		},
	},
	output_type: SDL_GamepadBindingType,
	output: union {
		button: SDL_GamepadButton,
		axis: struct {
			axis: SDL_GamepadAxis,
			axis_min: int,
			axis_max: int,
		},
	},
};
