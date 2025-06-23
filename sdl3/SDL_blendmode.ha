export def SDL_BLENDFACTOR_DST_ALPHA: int = 9;

export def SDL_BLENDFACTOR_DST_COLOR: int = 7;

export def SDL_BLENDFACTOR_ONE: int = 2;

export def SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA: int = 10;

export def SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR: int = 8;

export def SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA: int = 6;

export def SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR: int = 4;

export def SDL_BLENDFACTOR_SRC_ALPHA: int = 5;

export def SDL_BLENDFACTOR_SRC_COLOR: int = 3;

export def SDL_BLENDFACTOR_ZERO: int = 1;

export def SDL_BLENDOPERATION_ADD: int = 1;

export def SDL_BLENDOPERATION_MAXIMUM: int = 5;

export def SDL_BLENDOPERATION_MINIMUM: int = 4;

export def SDL_BLENDOPERATION_REV_SUBTRACT: int = 3;

export def SDL_BLENDOPERATION_SUBTRACT: int = 2;

export type SDL_BlendFactor = __enum_SDL_BlendFactor;

export type SDL_BlendMode = u32;

export type SDL_BlendOperation = __enum_SDL_BlendOperation;

export @symbol("SDL_ComposeCustomBlendMode") fn SDL_ComposeCustomBlendMode(
	srcColorFactor: SDL_BlendFactor,
	dstColorFactor: SDL_BlendFactor,
	colorOperation: SDL_BlendOperation,
	srcAlphaFactor: SDL_BlendFactor,
	dstAlphaFactor: SDL_BlendFactor,
	alphaOperation: SDL_BlendOperation,
) SDL_BlendMode;

export type __enum_SDL_BlendFactor = uint;

export type __enum_SDL_BlendOperation = uint;
