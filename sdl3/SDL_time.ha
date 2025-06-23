export def SDL_DATE_FORMAT_DDMMYYYY: int = 1;

export def SDL_DATE_FORMAT_MMDDYYYY: int = 2;

export def SDL_DATE_FORMAT_YYYYMMDD: int = 0;

export type SDL_DateFormat = __enum_SDL_DateFormat;

export type SDL_DateTime = __struct_SDL_DateTime;

export @symbol("SDL_DateTimeToTime") fn SDL_DateTimeToTime(
	dt: nullable *const SDL_DateTime,
	ticks: nullable *i64,
) bool;

export @symbol("SDL_GetCurrentTime") fn SDL_GetCurrentTime(
	ticks: nullable *i64,
) bool;

export @symbol("SDL_GetDateTimeLocalePreferences") fn SDL_GetDateTimeLocalePreferences(
	dateFormat: nullable *SDL_DateFormat,
	timeFormat: nullable *i64Format,
) bool;

export @symbol("SDL_GetDayOfWeek") fn SDL_GetDayOfWeek(
	year: int,
	month: int,
	day: int,
) int;

export @symbol("SDL_GetDayOfYear") fn SDL_GetDayOfYear(
	year: int,
	month: int,
	day: int,
) int;

export @symbol("SDL_GetDaysInMonth") fn SDL_GetDaysInMonth(
	year: int,
	month: int,
) int;

export def SDL_TIME_FORMAT_12HR: int = 1;

export def SDL_TIME_FORMAT_24HR: int = 0;

export type i64Format = __enum_i64Format;

export @symbol("i64FromWindows") fn i64FromWindows(
	dwLowDateTime: u32,
	dwHighDateTime: u32,
) i64;

export @symbol("i64ToDateTime") fn i64ToDateTime(
	ticks: i64,
	dt: nullable *SDL_DateTime,
	localTime: bool,
) bool;

export @symbol("i64ToWindows") fn i64ToWindows(
	ticks: i64,
	dwLowDateTime: nullable *u32,
	dwHighDateTime: nullable *u32,
) void;

export type __enum_SDL_DateFormat = uint;

export type __enum_i64Format = uint;

export type __struct_SDL_DateTime = struct {
	year: int,
	month: int,
	day: int,
	hour: int,
	minute: int,
	second: int,
	nanosecond: int,
	day_of_week: int,
	utc_offset: int,
};
