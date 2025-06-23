export @symbol("SDL_AddTimer") fn SDL_AddTimer(
	interval: u32,
	callback: i64rCallback,
	userdata: nullable *opaque,
) i64rID;

export @symbol("SDL_AddTimerNS") fn SDL_AddTimerNS(
	interval: u64,
	callback: SDL_NSTimerCallback,
	userdata: nullable *opaque,
) i64rID;

export @symbol("SDL_Delay") fn SDL_Delay(ms: u32) void;

export @symbol("SDL_DelayNS") fn SDL_DelayNS(ns: u64) void;

export @symbol("SDL_DelayPrecise") fn SDL_DelayPrecise(ns: u64) void;

export @symbol("SDL_GetPerformanceCounter") fn SDL_GetPerformanceCounter(
) u64;

export @symbol("SDL_GetPerformanceFrequency") fn SDL_GetPerformanceFrequency(
) u64;

export @symbol("SDL_GetTicks") fn SDL_GetTicks() u64;

export @symbol("SDL_GetTicksNS") fn SDL_GetTicksNS() u64;

export type SDL_NSTimerCallback = nullable *const fn(
	userdata: nullable *opaque,
	timerID: i64rID,
	interval: u64,
) u64;

export @symbol("SDL_RemoveTimer") fn SDL_RemoveTimer(id: i64rID) bool;

export type i64rCallback = nullable *const fn(
	userdata: nullable *opaque,
	timerID: i64rID,
	interval: u32,
) u32;

export type i64rID = u32;
