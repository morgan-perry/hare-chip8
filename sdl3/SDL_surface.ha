use types::c;

export @symbol("SDL_AddSurfaceAlternateImage") fn SDL_AddSurfaceAlternateImage(
	surface: nullable *SDL_Surface,
	image: nullable *SDL_Surface,
) bool;

export @symbol("SDL_BlitSurface") fn SDL_BlitSurface(
	src: nullable *SDL_Surface,
	srcrect: nullable *const SDL_Rect,
	dst: nullable *SDL_Surface,
	dstrect: nullable *const SDL_Rect,
) bool;

export @symbol("SDL_BlitSurface9Grid") fn SDL_BlitSurface9Grid(
	src: nullable *SDL_Surface,
	srcrect: nullable *const SDL_Rect,
	left_width: int,
	right_width: int,
	top_height: int,
	bottom_height: int,
	scale: f32,
	scaleMode: SDL_ScaleMode,
	dst: nullable *SDL_Surface,
	dstrect: nullable *const SDL_Rect,
) bool;

export @symbol("SDL_BlitSurfaceScaled") fn SDL_BlitSurfaceScaled(
	src: nullable *SDL_Surface,
	srcrect: nullable *const SDL_Rect,
	dst: nullable *SDL_Surface,
	dstrect: nullable *const SDL_Rect,
	scaleMode: SDL_ScaleMode,
) bool;

export @symbol("SDL_BlitSurfaceTiled") fn SDL_BlitSurfaceTiled(
	src: nullable *SDL_Surface,
	srcrect: nullable *const SDL_Rect,
	dst: nullable *SDL_Surface,
	dstrect: nullable *const SDL_Rect,
) bool;

export @symbol("SDL_BlitSurfaceTiledWithScale") fn SDL_BlitSurfaceTiledWithScale(
	src: nullable *SDL_Surface,
	srcrect: nullable *const SDL_Rect,
	scale: f32,
	scaleMode: SDL_ScaleMode,
	dst: nullable *SDL_Surface,
	dstrect: nullable *const SDL_Rect,
) bool;

export @symbol("SDL_BlitSurfaceUnchecked") fn SDL_BlitSurfaceUnchecked(
	src: nullable *SDL_Surface,
	srcrect: nullable *const SDL_Rect,
	dst: nullable *SDL_Surface,
	dstrect: nullable *const SDL_Rect,
) bool;

export @symbol("SDL_BlitSurfaceUncheckedScaled") fn SDL_BlitSurfaceUncheckedScaled(
	src: nullable *SDL_Surface,
	srcrect: nullable *const SDL_Rect,
	dst: nullable *SDL_Surface,
	dstrect: nullable *const SDL_Rect,
	scaleMode: SDL_ScaleMode,
) bool;

export @symbol("SDL_ClearSurface") fn SDL_ClearSurface(
	surface: nullable *SDL_Surface,
	r: f32,
	g: f32,
	b: f32,
	a: f32,
) bool;

export @symbol("SDL_ConvertPixels") fn SDL_ConvertPixels(
	width: int,
	height: int,
	src_format: SDL_PixelFormat,
	src: nullable *const opaque,
	src_pitch: int,
	dst_format: SDL_PixelFormat,
	dst: nullable *opaque,
	dst_pitch: int,
) bool;

export @symbol("SDL_ConvertPixelsAndColorspace") fn SDL_ConvertPixelsAndColorspace(
	width: int,
	height: int,
	src_format: SDL_PixelFormat,
	src_colorspace: SDL_Colorspace,
	src_properties: SDL_PropertiesID,
	src: nullable *const opaque,
	src_pitch: int,
	dst_format: SDL_PixelFormat,
	dst_colorspace: SDL_Colorspace,
	dst_properties: SDL_PropertiesID,
	dst: nullable *opaque,
	dst_pitch: int,
) bool;

export @symbol("SDL_ConvertSurface") fn SDL_ConvertSurface(
	surface: nullable *SDL_Surface,
	format: SDL_PixelFormat,
) nullable *SDL_Surface;

export @symbol("SDL_ConvertSurfaceAndColorspace") fn SDL_ConvertSurfaceAndColorspace(
	surface: nullable *SDL_Surface,
	format: SDL_PixelFormat,
	palette: nullable *SDL_Palette,
	colorspace: SDL_Colorspace,
	props: SDL_PropertiesID,
) nullable *SDL_Surface;

export @symbol("SDL_CreateSurface") fn SDL_CreateSurface(
	width: int,
	height: int,
	format: SDL_PixelFormat,
) nullable *SDL_Surface;

export @symbol("SDL_CreateSurfaceFrom") fn SDL_CreateSurfaceFrom(
	width: int,
	height: int,
	format: SDL_PixelFormat,
	pixels: nullable *opaque,
	pitch: int,
) nullable *SDL_Surface;

export @symbol("SDL_CreateSurfacePalette") fn SDL_CreateSurfacePalette(
	surface: nullable *SDL_Surface,
) nullable *SDL_Palette;

export @symbol("SDL_DestroySurface") fn SDL_DestroySurface(
	surface: nullable *SDL_Surface,
) void;

export @symbol("SDL_DuplicateSurface") fn SDL_DuplicateSurface(
	surface: nullable *SDL_Surface,
) nullable *SDL_Surface;

export def SDL_FLIP_HORIZONTAL: int = 1;

export def SDL_FLIP_NONE: int = 0;

export def SDL_FLIP_VERTICAL: int = 2;

export @symbol("SDL_FillSurfaceRect") fn SDL_FillSurfaceRect(
	dst: nullable *SDL_Surface,
	rect: nullable *const SDL_Rect,
	color: u32,
) bool;

export @symbol("SDL_FillSurfaceRects") fn SDL_FillSurfaceRects(
	dst: nullable *SDL_Surface,
	rects: nullable *const SDL_Rect,
	count: int,
	color: u32,
) bool;

export type SDL_FlipMode = __enum_SDL_FlipMode;

export @symbol("SDL_FlipSurface") fn SDL_FlipSurface(
	surface: nullable *SDL_Surface,
	flip: SDL_FlipMode,
) bool;

export @symbol("SDL_GetSurfaceAlphaMod") fn SDL_GetSurfaceAlphaMod(
	surface: nullable *SDL_Surface,
	alpha: nullable *u8,
) bool;

export @symbol("SDL_GetSurfaceBlendMode") fn SDL_GetSurfaceBlendMode(
	surface: nullable *SDL_Surface,
	blendMode: nullable *SDL_BlendMode,
) bool;

export @symbol("SDL_GetSurfaceClipRect") fn SDL_GetSurfaceClipRect(
	surface: nullable *SDL_Surface,
	rect: nullable *SDL_Rect,
) bool;

export @symbol("SDL_GetSurfaceColorKey") fn SDL_GetSurfaceColorKey(
	surface: nullable *SDL_Surface,
	key: nullable *u32,
) bool;

export @symbol("SDL_GetSurfaceColorMod") fn SDL_GetSurfaceColorMod(
	surface: nullable *SDL_Surface,
	r: nullable *u8,
	g: nullable *u8,
	b: nullable *u8,
) bool;

export @symbol("SDL_GetSurfaceColorspace") fn SDL_GetSurfaceColorspace(
	surface: nullable *SDL_Surface,
) SDL_Colorspace;

export @symbol("SDL_GetSurfaceImages") fn SDL_GetSurfaceImages(
	surface: nullable *SDL_Surface,
	count: nullable *int,
) nullable *nullable *SDL_Surface;

export @symbol("SDL_GetSurfacePalette") fn SDL_GetSurfacePalette(
	surface: nullable *SDL_Surface,
) nullable *SDL_Palette;

export @symbol("SDL_GetSurfaceProperties") fn SDL_GetSurfaceProperties(
	surface: nullable *SDL_Surface,
) SDL_PropertiesID;

export @symbol("SDL_LoadBMP") fn SDL_LoadBMP(
	file: nullable *const c::char,
) nullable *SDL_Surface;

export @symbol("SDL_LoadBMP_IO") fn SDL_LoadBMP_IO(
	src: nullable *SDL_IOStream,
	closeio: bool,
) nullable *SDL_Surface;

export @symbol("SDL_LockSurface") fn SDL_LockSurface(
	surface: nullable *SDL_Surface,
) bool;

export @symbol("SDL_MapSurfaceRGB") fn SDL_MapSurfaceRGB(
	surface: nullable *SDL_Surface,
	r: u8,
	g: u8,
	b: u8,
) u32;

export @symbol("SDL_MapSurfaceRGBA") fn SDL_MapSurfaceRGBA(
	surface: nullable *SDL_Surface,
	r: u8,
	g: u8,
	b: u8,
	a: u8,
) u32;

export @symbol("SDL_PremultiplyAlpha") fn SDL_PremultiplyAlpha(
	width: int,
	height: int,
	src_format: SDL_PixelFormat,
	src: nullable *const opaque,
	src_pitch: int,
	dst_format: SDL_PixelFormat,
	dst: nullable *opaque,
	dst_pitch: int,
	linear: bool,
) bool;

export @symbol("SDL_PremultiplySurfaceAlpha") fn SDL_PremultiplySurfaceAlpha(
	surface: nullable *SDL_Surface,
	linear: bool,
) bool;

export @symbol("SDL_ReadSurfacePixel") fn SDL_ReadSurfacePixel(
	surface: nullable *SDL_Surface,
	x: int,
	y: int,
	r: nullable *u8,
	g: nullable *u8,
	b: nullable *u8,
	a: nullable *u8,
) bool;

export @symbol("SDL_ReadSurfacePixelFloat") fn SDL_ReadSurfacePixelFloat(
	surface: nullable *SDL_Surface,
	x: int,
	y: int,
	r: nullable *f32,
	g: nullable *f32,
	b: nullable *f32,
	a: nullable *f32,
) bool;

export @symbol("SDL_RemoveSurfaceAlternateImages") fn SDL_RemoveSurfaceAlternateImages(
	surface: nullable *SDL_Surface,
) void;

export def SDL_SCALEMODE_INVALID: int = -1;

export def SDL_SCALEMODE_LINEAR: int = 1;

export def SDL_SCALEMODE_NEAREST: int = 0;

export @symbol("SDL_SaveBMP") fn SDL_SaveBMP(
	surface: nullable *SDL_Surface,
	file: nullable *const c::char,
) bool;

export @symbol("SDL_SaveBMP_IO") fn SDL_SaveBMP_IO(
	surface: nullable *SDL_Surface,
	dst: nullable *SDL_IOStream,
	closeio: bool,
) bool;

export type SDL_ScaleMode = __enum_SDL_ScaleMode;

export @symbol("SDL_ScaleSurface") fn SDL_ScaleSurface(
	surface: nullable *SDL_Surface,
	width: int,
	height: int,
	scaleMode: SDL_ScaleMode,
) nullable *SDL_Surface;

export @symbol("SDL_SetSurfaceAlphaMod") fn SDL_SetSurfaceAlphaMod(
	surface: nullable *SDL_Surface,
	alpha: u8,
) bool;

export @symbol("SDL_SetSurfaceBlendMode") fn SDL_SetSurfaceBlendMode(
	surface: nullable *SDL_Surface,
	blendMode: SDL_BlendMode,
) bool;

export @symbol("SDL_SetSurfaceClipRect") fn SDL_SetSurfaceClipRect(
	surface: nullable *SDL_Surface,
	rect: nullable *const SDL_Rect,
) bool;

export @symbol("SDL_SetSurfaceColorKey") fn SDL_SetSurfaceColorKey(
	surface: nullable *SDL_Surface,
	enabled: bool,
	key: u32,
) bool;

export @symbol("SDL_SetSurfaceColorMod") fn SDL_SetSurfaceColorMod(
	surface: nullable *SDL_Surface,
	r: u8,
	g: u8,
	b: u8,
) bool;

export @symbol("SDL_SetSurfaceColorspace") fn SDL_SetSurfaceColorspace(
	surface: nullable *SDL_Surface,
	colorspace: SDL_Colorspace,
) bool;

export @symbol("SDL_SetSurfacePalette") fn SDL_SetSurfacePalette(
	surface: nullable *SDL_Surface,
	palette: nullable *SDL_Palette,
) bool;

export @symbol("SDL_SetSurfaceRLE") fn SDL_SetSurfaceRLE(
	surface: nullable *SDL_Surface,
	enabled: bool,
) bool;

export @symbol("SDL_StretchSurface") fn SDL_StretchSurface(
	src: nullable *SDL_Surface,
	srcrect: nullable *const SDL_Rect,
	dst: nullable *SDL_Surface,
	dstrect: nullable *const SDL_Rect,
	scaleMode: SDL_ScaleMode,
) bool;

export type SDL_Surface = __struct_SDL_Surface;

export type SDL_SurfaceFlags = u32;

export @symbol("SDL_SurfaceHasAlternateImages") fn SDL_SurfaceHasAlternateImages(
	surface: nullable *SDL_Surface,
) bool;

export @symbol("SDL_SurfaceHasColorKey") fn SDL_SurfaceHasColorKey(
	surface: nullable *SDL_Surface,
) bool;

export @symbol("SDL_SurfaceHasRLE") fn SDL_SurfaceHasRLE(
	surface: nullable *SDL_Surface,
) bool;

export @symbol("SDL_UnlockSurface") fn SDL_UnlockSurface(
	surface: nullable *SDL_Surface,
) void;

export @symbol("SDL_WriteSurfacePixel") fn SDL_WriteSurfacePixel(
	surface: nullable *SDL_Surface,
	x: int,
	y: int,
	r: u8,
	g: u8,
	b: u8,
	a: u8,
) bool;

export @symbol("SDL_WriteSurfacePixelFloat") fn SDL_WriteSurfacePixelFloat(
	surface: nullable *SDL_Surface,
	x: int,
	y: int,
	r: f32,
	g: f32,
	b: f32,
	a: f32,
) bool;

export type __enum_SDL_FlipMode = uint;

export type __enum_SDL_ScaleMode = int;

export type __struct_SDL_Surface = struct {
	flags: SDL_SurfaceFlags,
	format: SDL_PixelFormat,
	w: int,
	h: int,
	pitch: int,
	pixels: nullable *opaque,
	refcount: int,
	reserved: nullable *opaque,
};
