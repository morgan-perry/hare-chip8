use types::c;

export @symbol("SDL_CloseHaptic") fn SDL_CloseHaptic(
	haptic: nullable *SDL_Haptic,
) void;

export @symbol("SDL_CreateHapticEffect") fn SDL_CreateHapticEffect(
	haptic: nullable *SDL_Haptic,
	effect: nullable *const SDL_HapticEffect,
) int;

export @symbol("SDL_DestroyHapticEffect") fn SDL_DestroyHapticEffect(
	haptic: nullable *SDL_Haptic,
	effect: int,
) void;

export @symbol("SDL_GetHapticEffectStatus") fn SDL_GetHapticEffectStatus(
	haptic: nullable *SDL_Haptic,
	effect: int,
) bool;

export @symbol("SDL_GetHapticFeatures") fn SDL_GetHapticFeatures(
	haptic: nullable *SDL_Haptic,
) u32;

export @symbol("SDL_GetHapticFromID") fn SDL_GetHapticFromID(
	instance_id: SDL_HapticID,
) nullable *SDL_Haptic;

export @symbol("SDL_GetHapticID") fn SDL_GetHapticID(
	haptic: nullable *SDL_Haptic,
) SDL_HapticID;

export @symbol("SDL_GetHapticName") fn SDL_GetHapticName(
	haptic: nullable *SDL_Haptic,
) nullable *const c::char;

export @symbol("SDL_GetHapticNameForID") fn SDL_GetHapticNameForID(
	instance_id: SDL_HapticID,
) nullable *const c::char;

export @symbol("SDL_GetHaptics") fn SDL_GetHaptics(
	count: nullable *int,
) nullable *SDL_HapticID;

export @symbol("SDL_GetMaxHapticEffects") fn SDL_GetMaxHapticEffects(
	haptic: nullable *SDL_Haptic,
) int;

export @symbol("SDL_GetMaxHapticEffectsPlaying") fn SDL_GetMaxHapticEffectsPlaying(
	haptic: nullable *SDL_Haptic,
) int;

export @symbol("SDL_GetNumHapticAxes") fn SDL_GetNumHapticAxes(
	haptic: nullable *SDL_Haptic,
) int;

export type SDL_Haptic = __struct_SDL_Haptic;

export type SDL_HapticCondition = __struct_SDL_HapticCondition;

export type SDL_HapticConstant = __struct_SDL_HapticConstant;

export type SDL_HapticCustom = __struct_SDL_HapticCustom;

export type SDL_HapticDirection = __struct_SDL_HapticDirection;

export type SDL_HapticEffect = __union_SDL_HapticEffect;

export @symbol("SDL_HapticEffectSupported") fn SDL_HapticEffectSupported(
	haptic: nullable *SDL_Haptic,
	effect: nullable *const SDL_HapticEffect,
) bool;

export type SDL_HapticID = u32;

export type SDL_HapticLeftRight = __struct_SDL_HapticLeftRight;

export type SDL_HapticPeriodic = __struct_SDL_HapticPeriodic;

export type SDL_HapticRamp = __struct_SDL_HapticRamp;

export @symbol("SDL_HapticRumbleSupported") fn SDL_HapticRumbleSupported(
	haptic: nullable *SDL_Haptic,
) bool;

export @symbol("SDL_InitHapticRumble") fn SDL_InitHapticRumble(
	haptic: nullable *SDL_Haptic,
) bool;

export @symbol("SDL_IsJoystickHaptic") fn SDL_IsJoystickHaptic(
	joystick: nullable *SDL_Joystick,
) bool;

export @symbol("SDL_IsMouseHaptic") fn SDL_IsMouseHaptic() bool;

export @symbol("SDL_OpenHaptic") fn SDL_OpenHaptic(
	instance_id: SDL_HapticID,
) nullable *SDL_Haptic;

export @symbol("SDL_OpenHapticFromJoystick") fn SDL_OpenHapticFromJoystick(
	joystick: nullable *SDL_Joystick,
) nullable *SDL_Haptic;

export @symbol("SDL_OpenHapticFromMouse") fn SDL_OpenHapticFromMouse(
) nullable *SDL_Haptic;

export @symbol("SDL_PauseHaptic") fn SDL_PauseHaptic(
	haptic: nullable *SDL_Haptic,
) bool;

export @symbol("SDL_PlayHapticRumble") fn SDL_PlayHapticRumble(
	haptic: nullable *SDL_Haptic,
	strength: f32,
	length: u32,
) bool;

export @symbol("SDL_ResumeHaptic") fn SDL_ResumeHaptic(
	haptic: nullable *SDL_Haptic,
) bool;

export @symbol("SDL_RunHapticEffect") fn SDL_RunHapticEffect(
	haptic: nullable *SDL_Haptic,
	effect: int,
	iterations: u32,
) bool;

export @symbol("SDL_SetHapticAutocenter") fn SDL_SetHapticAutocenter(
	haptic: nullable *SDL_Haptic,
	autocenter: int,
) bool;

export @symbol("SDL_SetHapticGain") fn SDL_SetHapticGain(
	haptic: nullable *SDL_Haptic,
	gain: int,
) bool;

export @symbol("SDL_StopHapticEffect") fn SDL_StopHapticEffect(
	haptic: nullable *SDL_Haptic,
	effect: int,
) bool;

export @symbol("SDL_StopHapticEffects") fn SDL_StopHapticEffects(
	haptic: nullable *SDL_Haptic,
) bool;

export @symbol("SDL_StopHapticRumble") fn SDL_StopHapticRumble(
	haptic: nullable *SDL_Haptic,
) bool;

export @symbol("SDL_UpdateHapticEffect") fn SDL_UpdateHapticEffect(
	haptic: nullable *SDL_Haptic,
	effect: int,
	data: nullable *const SDL_HapticEffect,
) bool;

export type __struct_SDL_Haptic = opaque;

export type __struct_SDL_HapticCondition = struct {
	__type: u16,
	direction: SDL_HapticDirection,
	length: u32,
	delay: u16,
	button: u16,
	interval: u16,
	right_sat: [3]u16,
	left_sat: [3]u16,
	right_coeff: [3]i16,
	left_coeff: [3]i16,
	deadband: [3]u16,
	center: [3]i16,
};

export type __struct_SDL_HapticConstant = struct {
	__type: u16,
	direction: SDL_HapticDirection,
	length: u32,
	delay: u16,
	button: u16,
	interval: u16,
	level: i16,
	attack_length: u16,
	attack_level: u16,
	fade_length: u16,
	fade_level: u16,
};

export type __struct_SDL_HapticCustom = struct {
	__type: u16,
	direction: SDL_HapticDirection,
	length: u32,
	delay: u16,
	button: u16,
	interval: u16,
	channels: u8,
	period: u16,
	samples: u16,
	data: nullable *u16,
	attack_length: u16,
	attack_level: u16,
	fade_length: u16,
	fade_level: u16,
};

export type __struct_SDL_HapticDirection = struct {
	__type: u8,
	dir: [3]i32,
};

export type __struct_SDL_HapticLeftRight = struct {
	__type: u16,
	length: u32,
	large_magnitude: u16,
	small_magnitude: u16,
};

export type __struct_SDL_HapticPeriodic = struct {
	__type: u16,
	direction: SDL_HapticDirection,
	length: u32,
	delay: u16,
	button: u16,
	interval: u16,
	period: u16,
	magnitude: i16,
	__offset: i16,
	phase: u16,
	attack_length: u16,
	attack_level: u16,
	fade_length: u16,
	fade_level: u16,
};

export type __struct_SDL_HapticRamp = struct {
	__type: u16,
	direction: SDL_HapticDirection,
	length: u32,
	delay: u16,
	button: u16,
	interval: u16,
	start: i16,
	end: i16,
	attack_length: u16,
	attack_level: u16,
	fade_length: u16,
	fade_level: u16,
};

export type __union_SDL_HapticEffect = union {
	__type: u16,
	constant: SDL_HapticConstant,
	periodic: SDL_HapticPeriodic,
	condition: SDL_HapticCondition,
	ramp: SDL_HapticRamp,
	leftright: SDL_HapticLeftRight,
	custom: SDL_HapticCustom,
};
