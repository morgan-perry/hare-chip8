use types::c;

export def SDL_ARRAYORDER_ABGR: int = 6;

export def SDL_ARRAYORDER_ARGB: int = 3;

export def SDL_ARRAYORDER_BGR: int = 4;

export def SDL_ARRAYORDER_BGRA: int = 5;

export def SDL_ARRAYORDER_NONE: int = 0;

export def SDL_ARRAYORDER_RGB: int = 1;

export def SDL_ARRAYORDER_RGBA: int = 2;

export type SDL_ArrayOrder = __enum_SDL_ArrayOrder;

export def SDL_BITMAPORDER_1234: int = 2;

export def SDL_BITMAPORDER_4321: int = 1;

export def SDL_BITMAPORDER_NONE: int = 0;

export type SDL_BitmapOrder = __enum_SDL_BitmapOrder;

export def SDL_CHROMA_LOCATION_CENTER: int = 2;

export def SDL_CHROMA_LOCATION_LEFT: int = 1;

export def SDL_CHROMA_LOCATION_NONE: int = 0;

export def SDL_CHROMA_LOCATION_TOPLEFT: int = 3;

export def SDL_COLORSPACE_BT2020_FULL: int = 571483657;

export def SDL_COLORSPACE_BT2020_LIMITED: int = 554706441;

export def SDL_COLORSPACE_BT601_FULL: int = 571480262;

export def SDL_COLORSPACE_BT601_LIMITED: int = 554703046;

export def SDL_COLORSPACE_BT709_FULL: int = 571474977;

export def SDL_COLORSPACE_BT709_LIMITED: int = 554697761;

export def SDL_COLORSPACE_HDR10: int = 301999616;

export def SDL_COLORSPACE_JPEG: int = 570426566;

export def SDL_COLORSPACE_RGB_DEFAULT: int = 301991328;

export def SDL_COLORSPACE_SRGB: int = 301991328;

export def SDL_COLORSPACE_SRGB_LINEAR: int = 301991168;

export def SDL_COLORSPACE_UNKNOWN: int = 0;

export def SDL_COLORSPACE_YUV_DEFAULT: int = 570426566;

export def SDL_COLOR_PRIMARIES_BT2020: int = 9;

export def SDL_COLOR_PRIMARIES_BT470BG: int = 5;

export def SDL_COLOR_PRIMARIES_BT470M: int = 4;

export def SDL_COLOR_PRIMARIES_BT601: int = 6;

export def SDL_COLOR_PRIMARIES_BT709: int = 1;

export def SDL_COLOR_PRIMARIES_CUSTOM: int = 31;

export def SDL_COLOR_PRIMARIES_EBU3213: int = 22;

export def SDL_COLOR_PRIMARIES_GENERIC_FILM: int = 8;

export def SDL_COLOR_PRIMARIES_SMPTE240: int = 7;

export def SDL_COLOR_PRIMARIES_SMPTE431: int = 11;

export def SDL_COLOR_PRIMARIES_SMPTE432: int = 12;

export def SDL_COLOR_PRIMARIES_UNKNOWN: int = 0;

export def SDL_COLOR_PRIMARIES_UNSPECIFIED: int = 2;

export def SDL_COLOR_PRIMARIES_XYZ: int = 10;

export def SDL_COLOR_RANGE_FULL: int = 2;

export def SDL_COLOR_RANGE_LIMITED: int = 1;

export def SDL_COLOR_RANGE_UNKNOWN: int = 0;

export def SDL_COLOR_TYPE_RGB: int = 1;

export def SDL_COLOR_TYPE_UNKNOWN: int = 0;

export def SDL_COLOR_TYPE_YCBCR: int = 2;

export type SDL_ChromaLocation = __enum_SDL_ChromaLocation;

export type SDL_Color = __struct_SDL_Color;

export type SDL_ColorPrimaries = __enum_SDL_ColorPrimaries;

export type SDL_ColorRange = __enum_SDL_ColorRange;

export type SDL_ColorType = __enum_SDL_ColorType;

export type SDL_Colorspace = __enum_SDL_Colorspace;

export @symbol("SDL_CreatePalette") fn SDL_CreatePalette(
	ncolors: int,
) nullable *SDL_Palette;

export @symbol("SDL_DestroyPalette") fn SDL_DestroyPalette(
	palette: nullable *SDL_Palette,
) void;

export type SDL_FColor = __struct_SDL_FColor;

export @symbol("SDL_GetMasksForPixelFormat") fn SDL_GetMasksForPixelFormat(
	format: SDL_PixelFormat,
	bpp: nullable *int,
	Rmask: nullable *u32,
	Gmask: nullable *u32,
	Bmask: nullable *u32,
	Amask: nullable *u32,
) bool;

export @symbol("SDL_GetPixelFormatDetails") fn SDL_GetPixelFormatDetails(
	format: SDL_PixelFormat,
) nullable *const SDL_PixelFormatDetails;

export @symbol("SDL_GetPixelFormatForMasks") fn SDL_GetPixelFormatForMasks(
	bpp: int,
	Rmask: u32,
	Gmask: u32,
	Bmask: u32,
	Amask: u32,
) SDL_PixelFormat;

export @symbol("SDL_GetPixelFormatName") fn SDL_GetPixelFormatName(
	format: SDL_PixelFormat,
) nullable *const c::char;

export @symbol("SDL_GetRGB") fn SDL_GetRGB(
	pixel: u32,
	format: nullable *const SDL_PixelFormatDetails,
	palette: nullable *const SDL_Palette,
	r: nullable *u8,
	g: nullable *u8,
	b: nullable *u8,
) void;

export @symbol("SDL_GetRGBA") fn SDL_GetRGBA(
	pixel: u32,
	format: nullable *const SDL_PixelFormatDetails,
	palette: nullable *const SDL_Palette,
	r: nullable *u8,
	g: nullable *u8,
	b: nullable *u8,
	a: nullable *u8,
) void;

export def SDL_MATRIX_COEFFICIENTS_BT2020_CL: int = 10;

export def SDL_MATRIX_COEFFICIENTS_BT2020_NCL: int = 9;

export def SDL_MATRIX_COEFFICIENTS_BT470BG: int = 5;

export def SDL_MATRIX_COEFFICIENTS_BT601: int = 6;

export def SDL_MATRIX_COEFFICIENTS_BT709: int = 1;

export def SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_CL: int = 13;

export def SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_NCL: int = 12;

export def SDL_MATRIX_COEFFICIENTS_CUSTOM: int = 31;

export def SDL_MATRIX_COEFFICIENTS_FCC: int = 4;

export def SDL_MATRIX_COEFFICIENTS_ICTCP: int = 14;

export def SDL_MATRIX_COEFFICIENTS_IDENTITY: int = 0;

export def SDL_MATRIX_COEFFICIENTS_SMPTE2085: int = 11;

export def SDL_MATRIX_COEFFICIENTS_SMPTE240: int = 7;

export def SDL_MATRIX_COEFFICIENTS_UNSPECIFIED: int = 2;

export def SDL_MATRIX_COEFFICIENTS_YCGCO: int = 8;

export @symbol("SDL_MapRGB") fn SDL_MapRGB(
	format: nullable *const SDL_PixelFormatDetails,
	palette: nullable *const SDL_Palette,
	r: u8,
	g: u8,
	b: u8,
) u32;

export @symbol("SDL_MapRGBA") fn SDL_MapRGBA(
	format: nullable *const SDL_PixelFormatDetails,
	palette: nullable *const SDL_Palette,
	r: u8,
	g: u8,
	b: u8,
	a: u8,
) u32;

export type SDL_MatrixCoefficients = __enum_SDL_MatrixCoefficients;

export def SDL_PACKEDLAYOUT_1010102: int = 8;

export def SDL_PACKEDLAYOUT_1555: int = 3;

export def SDL_PACKEDLAYOUT_2101010: int = 7;

export def SDL_PACKEDLAYOUT_332: int = 1;

export def SDL_PACKEDLAYOUT_4444: int = 2;

export def SDL_PACKEDLAYOUT_5551: int = 4;

export def SDL_PACKEDLAYOUT_565: int = 5;

export def SDL_PACKEDLAYOUT_8888: int = 6;

export def SDL_PACKEDLAYOUT_NONE: int = 0;

export def SDL_PACKEDORDER_ABGR: int = 7;

export def SDL_PACKEDORDER_ARGB: int = 3;

export def SDL_PACKEDORDER_BGRA: int = 8;

export def SDL_PACKEDORDER_BGRX: int = 6;

export def SDL_PACKEDORDER_NONE: int = 0;

export def SDL_PACKEDORDER_RGBA: int = 4;

export def SDL_PACKEDORDER_RGBX: int = 2;

export def SDL_PACKEDORDER_XBGR: int = 5;

export def SDL_PACKEDORDER_XRGB: int = 1;

export def SDL_PIXELFORMAT_ABGR128_FLOAT: int = 459309072;

export def SDL_PIXELFORMAT_ABGR1555: int = 359862274;

export def SDL_PIXELFORMAT_ABGR2101010: int = 376905732;

export def SDL_PIXELFORMAT_ABGR32: int = 373694468;

export def SDL_PIXELFORMAT_ABGR4444: int = 359796738;

export def SDL_PIXELFORMAT_ABGR64: int = 408961032;

export def SDL_PIXELFORMAT_ABGR64_FLOAT: int = 442515464;

export def SDL_PIXELFORMAT_ABGR8888: int = 376840196;

export def SDL_PIXELFORMAT_ARGB128_FLOAT: int = 456163344;

export def SDL_PIXELFORMAT_ARGB1555: int = 355667970;

export def SDL_PIXELFORMAT_ARGB2101010: int = 372711428;

export def SDL_PIXELFORMAT_ARGB32: int = 377888772;

export def SDL_PIXELFORMAT_ARGB4444: int = 355602434;

export def SDL_PIXELFORMAT_ARGB64: int = 405815304;

export def SDL_PIXELFORMAT_ARGB64_FLOAT: int = 439369736;

export def SDL_PIXELFORMAT_ARGB8888: int = 372645892;

export def SDL_PIXELFORMAT_BGR24: int = 390076419;

export def SDL_PIXELFORMAT_BGR48: int = 406859782;

export def SDL_PIXELFORMAT_BGR48_FLOAT: int = 440414214;

export def SDL_PIXELFORMAT_BGR565: int = 357896194;

export def SDL_PIXELFORMAT_BGR96_FLOAT: int = 457203724;

export def SDL_PIXELFORMAT_BGRA128_FLOAT: int = 458260496;

export def SDL_PIXELFORMAT_BGRA32: int = 372645892;

export def SDL_PIXELFORMAT_BGRA4444: int = 360845314;

export def SDL_PIXELFORMAT_BGRA5551: int = 360976386;

export def SDL_PIXELFORMAT_BGRA64: int = 407912456;

export def SDL_PIXELFORMAT_BGRA64_FLOAT: int = 441466888;

export def SDL_PIXELFORMAT_BGRA8888: int = 377888772;

export def SDL_PIXELFORMAT_BGRX32: int = 370546692;

export def SDL_PIXELFORMAT_BGRX8888: int = 375789572;

export def SDL_PIXELFORMAT_EXTERNAL_OES: int = 542328143;

export def SDL_PIXELFORMAT_INDEX1LSB: int = 286261504;

export def SDL_PIXELFORMAT_INDEX1MSB: int = 287310080;

export def SDL_PIXELFORMAT_INDEX2LSB: int = 470811136;

export def SDL_PIXELFORMAT_INDEX2MSB: int = 471859712;

export def SDL_PIXELFORMAT_INDEX4LSB: int = 303039488;

export def SDL_PIXELFORMAT_INDEX4MSB: int = 304088064;

export def SDL_PIXELFORMAT_INDEX8: int = 318769153;

export def SDL_PIXELFORMAT_IYUV: int = 1448433993;

export def SDL_PIXELFORMAT_MJPG: int = 1196444237;

export def SDL_PIXELFORMAT_NV12: int = 842094158;

export def SDL_PIXELFORMAT_NV21: int = 825382478;

export def SDL_PIXELFORMAT_P010: int = 808530000;

export def SDL_PIXELFORMAT_RGB24: int = 386930691;

export def SDL_PIXELFORMAT_RGB332: int = 336660481;

export def SDL_PIXELFORMAT_RGB48: int = 403714054;

export def SDL_PIXELFORMAT_RGB48_FLOAT: int = 437268486;

export def SDL_PIXELFORMAT_RGB565: int = 353701890;

export def SDL_PIXELFORMAT_RGB96_FLOAT: int = 454057996;

export def SDL_PIXELFORMAT_RGBA128_FLOAT: int = 455114768;

export def SDL_PIXELFORMAT_RGBA32: int = 376840196;

export def SDL_PIXELFORMAT_RGBA4444: int = 356651010;

export def SDL_PIXELFORMAT_RGBA5551: int = 356782082;

export def SDL_PIXELFORMAT_RGBA64: int = 404766728;

export def SDL_PIXELFORMAT_RGBA64_FLOAT: int = 438321160;

export def SDL_PIXELFORMAT_RGBA8888: int = 373694468;

export def SDL_PIXELFORMAT_RGBX32: int = 374740996;

export def SDL_PIXELFORMAT_RGBX8888: int = 371595268;

export def SDL_PIXELFORMAT_UNKNOWN: int = 0;

export def SDL_PIXELFORMAT_UYVY: int = 1498831189;

export def SDL_PIXELFORMAT_XBGR1555: int = 357764866;

export def SDL_PIXELFORMAT_XBGR2101010: int = 374808580;

export def SDL_PIXELFORMAT_XBGR32: int = 371595268;

export def SDL_PIXELFORMAT_XBGR4444: int = 357698562;

export def SDL_PIXELFORMAT_XBGR8888: int = 374740996;

export def SDL_PIXELFORMAT_XRGB1555: int = 353570562;

export def SDL_PIXELFORMAT_XRGB2101010: int = 370614276;

export def SDL_PIXELFORMAT_XRGB32: int = 375789572;

export def SDL_PIXELFORMAT_XRGB4444: int = 353504258;

export def SDL_PIXELFORMAT_XRGB8888: int = 370546692;

export def SDL_PIXELFORMAT_YUY2: int = 844715353;

export def SDL_PIXELFORMAT_YV12: int = 842094169;

export def SDL_PIXELFORMAT_YVYU: int = 1431918169;

export def SDL_PIXELTYPE_ARRAYF16: int = 10;

export def SDL_PIXELTYPE_ARRAYF32: int = 11;

export def SDL_PIXELTYPE_ARRAYU16: int = 8;

export def SDL_PIXELTYPE_ARRAYU32: int = 9;

export def SDL_PIXELTYPE_ARRAYU8: int = 7;

export def SDL_PIXELTYPE_INDEX1: int = 1;

export def SDL_PIXELTYPE_INDEX2: int = 12;

export def SDL_PIXELTYPE_INDEX4: int = 2;

export def SDL_PIXELTYPE_INDEX8: int = 3;

export def SDL_PIXELTYPE_PACKED16: int = 5;

export def SDL_PIXELTYPE_PACKED32: int = 6;

export def SDL_PIXELTYPE_PACKED8: int = 4;

export def SDL_PIXELTYPE_UNKNOWN: int = 0;

export type SDL_PackedLayout = __enum_SDL_PackedLayout;

export type SDL_PackedOrder = __enum_SDL_PackedOrder;

export type SDL_Palette = __struct_SDL_Palette;

export type SDL_PixelFormat = __enum_SDL_PixelFormat;

export type SDL_PixelFormatDetails = __struct_SDL_PixelFormatDetails;

export type SDL_PixelType = __enum_SDL_PixelType;

export @symbol("SDL_SetPaletteColors") fn SDL_SetPaletteColors(
	palette: nullable *SDL_Palette,
	colors: nullable *const SDL_Color,
	firstcolor: int,
	ncolors: int,
) bool;

export def SDL_TRANSFER_CHARACTERISTICS_BT1361: int = 12;

export def SDL_TRANSFER_CHARACTERISTICS_BT2020_10BIT: int = 14;

export def SDL_TRANSFER_CHARACTERISTICS_BT2020_12BIT: int = 15;

export def SDL_TRANSFER_CHARACTERISTICS_BT601: int = 6;

export def SDL_TRANSFER_CHARACTERISTICS_BT709: int = 1;

export def SDL_TRANSFER_CHARACTERISTICS_CUSTOM: int = 31;

export def SDL_TRANSFER_CHARACTERISTICS_GAMMA22: int = 4;

export def SDL_TRANSFER_CHARACTERISTICS_GAMMA28: int = 5;

export def SDL_TRANSFER_CHARACTERISTICS_HLG: int = 18;

export def SDL_TRANSFER_CHARACTERISTICS_IEC61966: int = 11;

export def SDL_TRANSFER_CHARACTERISTICS_LINEAR: int = 8;

export def SDL_TRANSFER_CHARACTERISTICS_LOG100: int = 9;

export def SDL_TRANSFER_CHARACTERISTICS_LOG100_SQRT10: int = 10;

export def SDL_TRANSFER_CHARACTERISTICS_PQ: int = 16;

export def SDL_TRANSFER_CHARACTERISTICS_SMPTE240: int = 7;

export def SDL_TRANSFER_CHARACTERISTICS_SMPTE428: int = 17;

export def SDL_TRANSFER_CHARACTERISTICS_SRGB: int = 13;

export def SDL_TRANSFER_CHARACTERISTICS_UNKNOWN: int = 0;

export def SDL_TRANSFER_CHARACTERISTICS_UNSPECIFIED: int = 2;

export type SDL_TransferCharacteristics = __enum_SDL_TransferCharacteristics;

export type __enum_SDL_ArrayOrder = uint;

export type __enum_SDL_BitmapOrder = uint;

export type __enum_SDL_ChromaLocation = uint;

export type __enum_SDL_ColorPrimaries = uint;

export type __enum_SDL_ColorRange = uint;

export type __enum_SDL_ColorType = uint;

export type __enum_SDL_Colorspace = uint;

export type __enum_SDL_MatrixCoefficients = uint;

export type __enum_SDL_PackedLayout = uint;

export type __enum_SDL_PackedOrder = uint;

export type __enum_SDL_PixelFormat = uint;

export type __enum_SDL_PixelType = uint;

export type __enum_SDL_TransferCharacteristics = uint;

export type __struct_SDL_Color = struct {
	r: u8,
	g: u8,
	b: u8,
	a: u8,
};

export type __struct_SDL_FColor = struct {
	r: f32,
	g: f32,
	b: f32,
	a: f32,
};

export type __struct_SDL_Palette = struct {
	ncolors: int,
	colors: nullable *SDL_Color,
	version: u32,
	refcount: int,
};

export type __struct_SDL_PixelFormatDetails = struct {
	format: SDL_PixelFormat,
	bits_per_pixel: u8,
	bytes_per_pixel: u8,
	padding: [2]u8,
	Rmask: u32,
	Gmask: u32,
	Bmask: u32,
	Amask: u32,
	Rbits: u8,
	Gbits: u8,
	Bbits: u8,
	Abits: u8,
	Rshift: u8,
	Gshift: u8,
	Bshift: u8,
	Ashift: u8,
};
