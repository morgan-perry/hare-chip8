use types::c;

export @symbol("SDL_AcquireCameraFrame") fn SDL_AcquireCameraFrame(
	camera: nullable *SDL_Camera,
	timestampNS: nullable *u64,
) nullable *SDL_Surface;

export def SDL_CAMERA_POSITION_BACK_FACING: int = 2;

export def SDL_CAMERA_POSITION_FRONT_FACING: int = 1;

export def SDL_CAMERA_POSITION_UNKNOWN: int = 0;

export type SDL_Camera = __struct_SDL_Camera;

export type SDL_CameraID = u32;

export type SDL_CameraPosition = __enum_SDL_CameraPosition;

export type SDL_CameraSpec = __struct_SDL_CameraSpec;

export @symbol("SDL_CloseCamera") fn SDL_CloseCamera(
	camera: nullable *SDL_Camera,
) void;

export @symbol("SDL_GetCameraDriver") fn SDL_GetCameraDriver(
	index: int,
) nullable *const c::char;

export @symbol("SDL_GetCameraFormat") fn SDL_GetCameraFormat(
	camera: nullable *SDL_Camera,
	spec: nullable *SDL_CameraSpec,
) bool;

export @symbol("SDL_GetCameraID") fn SDL_GetCameraID(
	camera: nullable *SDL_Camera,
) SDL_CameraID;

export @symbol("SDL_GetCameraName") fn SDL_GetCameraName(
	instance_id: SDL_CameraID,
) nullable *const c::char;

export @symbol("SDL_GetCameraPermissionState") fn SDL_GetCameraPermissionState(
	camera: nullable *SDL_Camera,
) int;

export @symbol("SDL_GetCameraPosition") fn SDL_GetCameraPosition(
	instance_id: SDL_CameraID,
) SDL_CameraPosition;

export @symbol("SDL_GetCameraProperties") fn SDL_GetCameraProperties(
	camera: nullable *SDL_Camera,
) SDL_PropertiesID;

export @symbol("SDL_GetCameraSupportedFormats") fn SDL_GetCameraSupportedFormats(
	instance_id: SDL_CameraID,
	count: nullable *int,
) nullable *nullable *SDL_CameraSpec;

export @symbol("SDL_GetCameras") fn SDL_GetCameras(
	count: nullable *int,
) nullable *SDL_CameraID;

export @symbol("SDL_GetCurrentCameraDriver") fn SDL_GetCurrentCameraDriver(
) nullable *const c::char;

export @symbol("SDL_GetNumCameraDrivers") fn SDL_GetNumCameraDrivers() int;

export @symbol("SDL_OpenCamera") fn SDL_OpenCamera(
	instance_id: SDL_CameraID,
	spec: nullable *const SDL_CameraSpec,
) nullable *SDL_Camera;

export @symbol("SDL_ReleaseCameraFrame") fn SDL_ReleaseCameraFrame(
	camera: nullable *SDL_Camera,
	frame: nullable *SDL_Surface,
) void;

export type __enum_SDL_CameraPosition = uint;

export type __struct_SDL_Camera = opaque;

export type __struct_SDL_CameraSpec = struct {
	format: SDL_PixelFormat,
	colorspace: SDL_Colorspace,
	width: int,
	height: int,
	framerate_numerator: int,
	framerate_denominator: int,
};
