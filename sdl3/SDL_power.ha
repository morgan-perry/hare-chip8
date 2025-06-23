export @symbol("SDL_GetPowerInfo") fn SDL_GetPowerInfo(
	seconds: nullable *int,
	percent: nullable *int,
) SDL_PowerState;

export def SDL_POWERSTATE_CHARGED: int = 4;

export def SDL_POWERSTATE_CHARGING: int = 3;

export def SDL_POWERSTATE_ERROR: int = -1;

export def SDL_POWERSTATE_NO_BATTERY: int = 2;

export def SDL_POWERSTATE_ON_BATTERY: int = 1;

export def SDL_POWERSTATE_UNKNOWN: int = 0;

export type SDL_PowerState = __enum_SDL_PowerState;

export type __enum_SDL_PowerState = int;
