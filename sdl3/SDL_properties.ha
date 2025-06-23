use types::c;

export type SDL_CleanupPropertyCallback = nullable *const fn(
	userdata: nullable *opaque,
	value: nullable *opaque,
) void;

export @symbol("SDL_ClearProperty") fn SDL_ClearProperty(
	props: SDL_PropertiesID,
	name: nullable *const c::char,
) bool;

export @symbol("SDL_CopyProperties") fn SDL_CopyProperties(
	src: SDL_PropertiesID,
	dst: SDL_PropertiesID,
) bool;

export @symbol("SDL_CreateProperties") fn SDL_CreateProperties(
) SDL_PropertiesID;

export @symbol("SDL_DestroyProperties") fn SDL_DestroyProperties(
	props: SDL_PropertiesID,
) void;

export @symbol("SDL_EnumerateProperties") fn SDL_EnumerateProperties(
	props: SDL_PropertiesID,
	callback: SDL_EnumeratePropertiesCallback,
	userdata: nullable *opaque,
) bool;

export type SDL_EnumeratePropertiesCallback = nullable *const fn(
	userdata: nullable *opaque,
	props: SDL_PropertiesID,
	name: nullable *const c::char,
) void;

export @symbol("SDL_GetBooleanProperty") fn SDL_GetBooleanProperty(
	props: SDL_PropertiesID,
	name: nullable *const c::char,
	default_value: bool,
) bool;

export @symbol("SDL_GetFloatProperty") fn SDL_GetFloatProperty(
	props: SDL_PropertiesID,
	name: nullable *const c::char,
	default_value: f32,
) f32;

export @symbol("SDL_GetGlobalProperties") fn SDL_GetGlobalProperties(
) SDL_PropertiesID;

export @symbol("SDL_GetNumberProperty") fn SDL_GetNumberProperty(
	props: SDL_PropertiesID,
	name: nullable *const c::char,
	default_value: i64,
) i64;

export @symbol("SDL_GetPointerProperty") fn SDL_GetPointerProperty(
	props: SDL_PropertiesID,
	name: nullable *const c::char,
	default_value: nullable *opaque,
) nullable *opaque;

export @symbol("SDL_GetPropertyType") fn SDL_GetPropertyType(
	props: SDL_PropertiesID,
	name: nullable *const c::char,
) SDL_PropertyType;

export @symbol("SDL_GetStringProperty") fn SDL_GetStringProperty(
	props: SDL_PropertiesID,
	name: nullable *const c::char,
	default_value: nullable *const c::char,
) nullable *const c::char;

export @symbol("SDL_HasProperty") fn SDL_HasProperty(
	props: SDL_PropertiesID,
	name: nullable *const c::char,
) bool;

export @symbol("SDL_LockProperties") fn SDL_LockProperties(
	props: SDL_PropertiesID,
) bool;

export def SDL_PROPERTY_TYPE_BOOLEAN: int = 5;

export def SDL_PROPERTY_TYPE_FLOAT: int = 4;

export def SDL_PROPERTY_TYPE_INVALID: int = 0;

export def SDL_PROPERTY_TYPE_NUMBER: int = 3;

export def SDL_PROPERTY_TYPE_POINTER: int = 1;

export def SDL_PROPERTY_TYPE_STRING: int = 2;

export type SDL_PropertiesID = u32;

export type SDL_PropertyType = __enum_SDL_PropertyType;

export @symbol("SDL_SetBooleanProperty") fn SDL_SetBooleanProperty(
	props: SDL_PropertiesID,
	name: nullable *const c::char,
	value: bool,
) bool;

export @symbol("SDL_SetFloatProperty") fn SDL_SetFloatProperty(
	props: SDL_PropertiesID,
	name: nullable *const c::char,
	value: f32,
) bool;

export @symbol("SDL_SetNumberProperty") fn SDL_SetNumberProperty(
	props: SDL_PropertiesID,
	name: nullable *const c::char,
	value: i64,
) bool;

export @symbol("SDL_SetPointerProperty") fn SDL_SetPointerProperty(
	props: SDL_PropertiesID,
	name: nullable *const c::char,
	value: nullable *opaque,
) bool;

export @symbol("SDL_SetPointerPropertyWithCleanup") fn SDL_SetPointerPropertyWithCleanup(
	props: SDL_PropertiesID,
	name: nullable *const c::char,
	value: nullable *opaque,
	cleanup: SDL_CleanupPropertyCallback,
	userdata: nullable *opaque,
) bool;

export @symbol("SDL_SetStringProperty") fn SDL_SetStringProperty(
	props: SDL_PropertiesID,
	name: nullable *const c::char,
	value: nullable *const c::char,
) bool;

export @symbol("SDL_UnlockProperties") fn SDL_UnlockProperties(
	props: SDL_PropertiesID,
) void;

export type __enum_SDL_PropertyType = uint;
