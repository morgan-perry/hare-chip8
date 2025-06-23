use types::c;

export type SDL_Finger = __struct_SDL_Finger;

export type SDL_FingerID = u64;

export @symbol("SDL_GetTouchDeviceName") fn SDL_GetTouchDeviceName(
	touchID: SDL_TouchID,
) nullable *const c::char;

export @symbol("SDL_GetTouchDeviceType") fn SDL_GetTouchDeviceType(
	touchID: SDL_TouchID,
) SDL_TouchDeviceType;

export @symbol("SDL_GetTouchDevices") fn SDL_GetTouchDevices(
	count: nullable *int,
) nullable *SDL_TouchID;

export @symbol("SDL_GetTouchFingers") fn SDL_GetTouchFingers(
	touchID: SDL_TouchID,
	count: nullable *int,
) nullable *nullable *SDL_Finger;

export def SDL_TOUCH_DEVICE_DIRECT: int = 0;

export def SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE: int = 1;

export def SDL_TOUCH_DEVICE_INDIRECT_RELATIVE: int = 2;

export def SDL_TOUCH_DEVICE_INVALID: int = -1;

export type SDL_TouchDeviceType = __enum_SDL_TouchDeviceType;

export type SDL_TouchID = u64;

export type __enum_SDL_TouchDeviceType = int;

export type __struct_SDL_Finger = struct {
	id: SDL_FingerID,
	x: f32,
	y: f32,
	pressure: f32,
};
