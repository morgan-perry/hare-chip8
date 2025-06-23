export type SDL_MetalView = nullable *opaque;

export @symbol("SDL_Metal_CreateView") fn SDL_Metal_CreateView(
	window: nullable *SDL_Window,
) SDL_MetalView;

export @symbol("SDL_Metal_DestroyView") fn SDL_Metal_DestroyView(
	view: SDL_MetalView,
) void;

export @symbol("SDL_Metal_GetLayer") fn SDL_Metal_GetLayer(
	view: SDL_MetalView,
) nullable *opaque;
