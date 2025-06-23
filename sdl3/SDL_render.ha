use types::c;

export @symbol("SDL_AddVulkanRenderSemaphores") fn SDL_AddVulkanRenderSemaphores(
	renderer: nullable *SDL_Renderer,
	wait_stage_mask: u32,
	wait_semaphore: i64,
	signal_semaphore: i64,
) bool;

export @symbol("SDL_ConvertEventToRenderCoordinates") fn SDL_ConvertEventToRenderCoordinates(
	renderer: nullable *SDL_Renderer,
	event: nullable *SDL_Event,
) bool;

export @symbol("SDL_CreateRenderer") fn SDL_CreateRenderer(
	window: nullable *SDL_Window,
	name: nullable *const c::char,
) nullable *SDL_Renderer;

export @symbol("SDL_CreateRendererWithProperties") fn SDL_CreateRendererWithProperties(
	props: SDL_PropertiesID,
) nullable *SDL_Renderer;

export @symbol("SDL_CreateSoftwareRenderer") fn SDL_CreateSoftwareRenderer(
	surface: nullable *SDL_Surface,
) nullable *SDL_Renderer;

export @symbol("SDL_CreateTexture") fn SDL_CreateTexture(
	renderer: nullable *SDL_Renderer,
	format: SDL_PixelFormat,
	access: SDL_TextureAccess,
	w: int,
	h: int,
) nullable *SDL_Texture;

export @symbol("SDL_CreateTextureFromSurface") fn SDL_CreateTextureFromSurface(
	renderer: nullable *SDL_Renderer,
	surface: nullable *SDL_Surface,
) nullable *SDL_Texture;

export @symbol("SDL_CreateTextureWithProperties") fn SDL_CreateTextureWithProperties(
	renderer: nullable *SDL_Renderer,
	props: SDL_PropertiesID,
) nullable *SDL_Texture;

export @symbol("SDL_CreateWindowAndRenderer") fn SDL_CreateWindowAndRenderer(
	title: nullable *const c::char,
	width: int,
	height: int,
	window_flags: SDL_WindowFlags,
	window: nullable *nullable *SDL_Window,
	renderer: nullable *nullable *SDL_Renderer,
) bool;

export @symbol("SDL_DestroyRenderer") fn SDL_DestroyRenderer(
	renderer: nullable *SDL_Renderer,
) void;

export @symbol("SDL_DestroyTexture") fn SDL_DestroyTexture(
	texture: nullable *SDL_Texture,
) void;

export @symbol("SDL_FlushRenderer") fn SDL_FlushRenderer(
	renderer: nullable *SDL_Renderer,
) bool;

export @symbol("SDL_GetCurrentRenderOutputSize") fn SDL_GetCurrentRenderOutputSize(
	renderer: nullable *SDL_Renderer,
	w: nullable *int,
	h: nullable *int,
) bool;

export @symbol("SDL_GetNumRenderDrivers") fn SDL_GetNumRenderDrivers() int;

export @symbol("SDL_GetRenderClipRect") fn SDL_GetRenderClipRect(
	renderer: nullable *SDL_Renderer,
	rect: nullable *SDL_Rect,
) bool;

export @symbol("SDL_GetRenderColorScale") fn SDL_GetRenderColorScale(
	renderer: nullable *SDL_Renderer,
	scale: nullable *f32,
) bool;

export @symbol("SDL_GetRenderDrawBlendMode") fn SDL_GetRenderDrawBlendMode(
	renderer: nullable *SDL_Renderer,
	blendMode: nullable *SDL_BlendMode,
) bool;

export @symbol("SDL_GetRenderDrawColor") fn SDL_GetRenderDrawColor(
	renderer: nullable *SDL_Renderer,
	r: nullable *u8,
	g: nullable *u8,
	b: nullable *u8,
	a: nullable *u8,
) bool;

export @symbol("SDL_GetRenderDrawColorFloat") fn SDL_GetRenderDrawColorFloat(
	renderer: nullable *SDL_Renderer,
	r: nullable *f32,
	g: nullable *f32,
	b: nullable *f32,
	a: nullable *f32,
) bool;

export @symbol("SDL_GetRenderDriver") fn SDL_GetRenderDriver(
	index: int,
) nullable *const c::char;

export @symbol("SDL_GetRenderLogicalPresentation") fn SDL_GetRenderLogicalPresentation(
	renderer: nullable *SDL_Renderer,
	w: nullable *int,
	h: nullable *int,
	mode: nullable *SDL_RendererLogicalPresentation,
) bool;

export @symbol("SDL_GetRenderLogicalPresentationRect") fn SDL_GetRenderLogicalPresentationRect(
	renderer: nullable *SDL_Renderer,
	rect: nullable *SDL_FRect,
) bool;

export @symbol("SDL_GetRenderMetalCommandEncoder") fn SDL_GetRenderMetalCommandEncoder(
	renderer: nullable *SDL_Renderer,
) nullable *opaque;

export @symbol("SDL_GetRenderMetalLayer") fn SDL_GetRenderMetalLayer(
	renderer: nullable *SDL_Renderer,
) nullable *opaque;

export @symbol("SDL_GetRenderOutputSize") fn SDL_GetRenderOutputSize(
	renderer: nullable *SDL_Renderer,
	w: nullable *int,
	h: nullable *int,
) bool;

export @symbol("SDL_GetRenderSafeArea") fn SDL_GetRenderSafeArea(
	renderer: nullable *SDL_Renderer,
	rect: nullable *SDL_Rect,
) bool;

export @symbol("SDL_GetRenderScale") fn SDL_GetRenderScale(
	renderer: nullable *SDL_Renderer,
	scaleX: nullable *f32,
	scaleY: nullable *f32,
) bool;

export @symbol("SDL_GetRenderTarget") fn SDL_GetRenderTarget(
	renderer: nullable *SDL_Renderer,
) nullable *SDL_Texture;

export @symbol("SDL_GetRenderVSync") fn SDL_GetRenderVSync(
	renderer: nullable *SDL_Renderer,
	vsync: nullable *int,
) bool;

export @symbol("SDL_GetRenderViewport") fn SDL_GetRenderViewport(
	renderer: nullable *SDL_Renderer,
	rect: nullable *SDL_Rect,
) bool;

export @symbol("SDL_GetRenderWindow") fn SDL_GetRenderWindow(
	renderer: nullable *SDL_Renderer,
) nullable *SDL_Window;

export @symbol("SDL_GetRenderer") fn SDL_GetRenderer(
	window: nullable *SDL_Window,
) nullable *SDL_Renderer;

export @symbol("SDL_GetRendererFromTexture") fn SDL_GetRendererFromTexture(
	texture: nullable *SDL_Texture,
) nullable *SDL_Renderer;

export @symbol("SDL_GetRendererName") fn SDL_GetRendererName(
	renderer: nullable *SDL_Renderer,
) nullable *const c::char;

export @symbol("SDL_GetRendererProperties") fn SDL_GetRendererProperties(
	renderer: nullable *SDL_Renderer,
) SDL_PropertiesID;

export @symbol("SDL_GetTextureAlphaMod") fn SDL_GetTextureAlphaMod(
	texture: nullable *SDL_Texture,
	alpha: nullable *u8,
) bool;

export @symbol("SDL_GetTextureAlphaModFloat") fn SDL_GetTextureAlphaModFloat(
	texture: nullable *SDL_Texture,
	alpha: nullable *f32,
) bool;

export @symbol("SDL_GetTextureBlendMode") fn SDL_GetTextureBlendMode(
	texture: nullable *SDL_Texture,
	blendMode: nullable *SDL_BlendMode,
) bool;

export @symbol("SDL_GetTextureColorMod") fn SDL_GetTextureColorMod(
	texture: nullable *SDL_Texture,
	r: nullable *u8,
	g: nullable *u8,
	b: nullable *u8,
) bool;

export @symbol("SDL_GetTextureColorModFloat") fn SDL_GetTextureColorModFloat(
	texture: nullable *SDL_Texture,
	r: nullable *f32,
	g: nullable *f32,
	b: nullable *f32,
) bool;

export @symbol("SDL_GetTextureProperties") fn SDL_GetTextureProperties(
	texture: nullable *SDL_Texture,
) SDL_PropertiesID;

export @symbol("SDL_GetTextureScaleMode") fn SDL_GetTextureScaleMode(
	texture: nullable *SDL_Texture,
	scaleMode: nullable *SDL_ScaleMode,
) bool;

export @symbol("SDL_GetTextureSize") fn SDL_GetTextureSize(
	texture: nullable *SDL_Texture,
	w: nullable *f32,
	h: nullable *f32,
) bool;

export def SDL_LOGICAL_PRESENTATION_DISABLED: int = 0;

export def SDL_LOGICAL_PRESENTATION_INTEGER_SCALE: int = 4;

export def SDL_LOGICAL_PRESENTATION_LETTERBOX: int = 2;

export def SDL_LOGICAL_PRESENTATION_OVERSCAN: int = 3;

export def SDL_LOGICAL_PRESENTATION_STRETCH: int = 1;

export @symbol("SDL_LockTexture") fn SDL_LockTexture(
	texture: nullable *SDL_Texture,
	rect: nullable *const SDL_Rect,
	pixels: nullable *nullable *opaque,
	pitch: nullable *int,
) bool;

export @symbol("SDL_LockTextureToSurface") fn SDL_LockTextureToSurface(
	texture: nullable *SDL_Texture,
	rect: nullable *const SDL_Rect,
	surface: nullable *nullable *SDL_Surface,
) bool;

export @symbol("SDL_RenderClear") fn SDL_RenderClear(
	renderer: nullable *SDL_Renderer,
) bool;

export @symbol("SDL_RenderClipEnabled") fn SDL_RenderClipEnabled(
	renderer: nullable *SDL_Renderer,
) bool;

export @symbol("SDL_RenderCoordinatesFromWindow") fn SDL_RenderCoordinatesFromWindow(
	renderer: nullable *SDL_Renderer,
	window_x: f32,
	window_y: f32,
	x: nullable *f32,
	y: nullable *f32,
) bool;

export @symbol("SDL_RenderCoordinatesToWindow") fn SDL_RenderCoordinatesToWindow(
	renderer: nullable *SDL_Renderer,
	x: f32,
	y: f32,
	window_x: nullable *f32,
	window_y: nullable *f32,
) bool;

export @symbol("SDL_RenderDebugText") fn SDL_RenderDebugText(
	renderer: nullable *SDL_Renderer,
	x: f32,
	y: f32,
	__str: nullable *const c::char,
) bool;

export @symbol("SDL_RenderDebugTextFormat") fn SDL_RenderDebugTextFormat(
	renderer: nullable *SDL_Renderer,
	x: f32,
	y: f32,
	fmt: nullable *const c::char,
	...
) bool;

export @symbol("SDL_RenderFillRect") fn SDL_RenderFillRect(
	renderer: nullable *SDL_Renderer,
	rect: nullable *const SDL_FRect,
) bool;

export @symbol("SDL_RenderFillRects") fn SDL_RenderFillRects(
	renderer: nullable *SDL_Renderer,
	rects: nullable *const SDL_FRect,
	count: int,
) bool;

export @symbol("SDL_RenderGeometry") fn SDL_RenderGeometry(
	renderer: nullable *SDL_Renderer,
	texture: nullable *SDL_Texture,
	vertices: nullable *const SDL_Vertex,
	num_vertices: int,
	indices: nullable *const int,
	num_indices: int,
) bool;

export @symbol("SDL_RenderGeometryRaw") fn SDL_RenderGeometryRaw(
	renderer: nullable *SDL_Renderer,
	texture: nullable *SDL_Texture,
	xy: nullable *const f32,
	xy_stride: int,
	color: nullable *const SDL_FColor,
	color_stride: int,
	uv: nullable *const f32,
	uv_stride: int,
	num_vertices: int,
	indices: nullable *const opaque,
	num_indices: int,
	size_indices: int,
) bool;

export @symbol("SDL_RenderLine") fn SDL_RenderLine(
	renderer: nullable *SDL_Renderer,
	x1: f32,
	y1: f32,
	x2: f32,
	y2: f32,
) bool;

export @symbol("SDL_RenderLines") fn SDL_RenderLines(
	renderer: nullable *SDL_Renderer,
	points: nullable *const SDL_FPoint,
	count: int,
) bool;

export @symbol("SDL_RenderPoint") fn SDL_RenderPoint(
	renderer: nullable *SDL_Renderer,
	x: f32,
	y: f32,
) bool;

export @symbol("SDL_RenderPoints") fn SDL_RenderPoints(
	renderer: nullable *SDL_Renderer,
	points: nullable *const SDL_FPoint,
	count: int,
) bool;

export @symbol("SDL_RenderPresent") fn SDL_RenderPresent(
	renderer: nullable *SDL_Renderer,
) bool;

export @symbol("SDL_RenderReadPixels") fn SDL_RenderReadPixels(
	renderer: nullable *SDL_Renderer,
	rect: nullable *const SDL_Rect,
) nullable *SDL_Surface;

export @symbol("SDL_RenderRect") fn SDL_RenderRect(
	renderer: nullable *SDL_Renderer,
	rect: nullable *const SDL_FRect,
) bool;

export @symbol("SDL_RenderRects") fn SDL_RenderRects(
	renderer: nullable *SDL_Renderer,
	rects: nullable *const SDL_FRect,
	count: int,
) bool;

export @symbol("SDL_RenderTexture") fn SDL_RenderTexture(
	renderer: nullable *SDL_Renderer,
	texture: nullable *SDL_Texture,
	srcrect: nullable *const SDL_FRect,
	dstrect: nullable *const SDL_FRect,
) bool;

export @symbol("SDL_RenderTexture9Grid") fn SDL_RenderTexture9Grid(
	renderer: nullable *SDL_Renderer,
	texture: nullable *SDL_Texture,
	srcrect: nullable *const SDL_FRect,
	left_width: f32,
	right_width: f32,
	top_height: f32,
	bottom_height: f32,
	scale: f32,
	dstrect: nullable *const SDL_FRect,
) bool;

export @symbol("SDL_RenderTextureAffine") fn SDL_RenderTextureAffine(
	renderer: nullable *SDL_Renderer,
	texture: nullable *SDL_Texture,
	srcrect: nullable *const SDL_FRect,
	origin: nullable *const SDL_FPoint,
	right: nullable *const SDL_FPoint,
	down: nullable *const SDL_FPoint,
) bool;

export @symbol("SDL_RenderTextureRotated") fn SDL_RenderTextureRotated(
	renderer: nullable *SDL_Renderer,
	texture: nullable *SDL_Texture,
	srcrect: nullable *const SDL_FRect,
	dstrect: nullable *const SDL_FRect,
	angle: f64,
	center: nullable *const SDL_FPoint,
	flip: SDL_FlipMode,
) bool;

export @symbol("SDL_RenderTextureTiled") fn SDL_RenderTextureTiled(
	renderer: nullable *SDL_Renderer,
	texture: nullable *SDL_Texture,
	srcrect: nullable *const SDL_FRect,
	scale: f32,
	dstrect: nullable *const SDL_FRect,
) bool;

export @symbol("SDL_RenderViewportSet") fn SDL_RenderViewportSet(
	renderer: nullable *SDL_Renderer,
) bool;

export type SDL_Renderer = __struct_SDL_Renderer;

export type SDL_RendererLogicalPresentation = __enum_SDL_RendererLogicalPresentation;

export @symbol("SDL_SetRenderClipRect") fn SDL_SetRenderClipRect(
	renderer: nullable *SDL_Renderer,
	rect: nullable *const SDL_Rect,
) bool;

export @symbol("SDL_SetRenderColorScale") fn SDL_SetRenderColorScale(
	renderer: nullable *SDL_Renderer,
	scale: f32,
) bool;

export @symbol("SDL_SetRenderDrawBlendMode") fn SDL_SetRenderDrawBlendMode(
	renderer: nullable *SDL_Renderer,
	blendMode: SDL_BlendMode,
) bool;

export @symbol("SDL_SetRenderDrawColor") fn SDL_SetRenderDrawColor(
	renderer: nullable *SDL_Renderer,
	r: u8,
	g: u8,
	b: u8,
	a: u8,
) bool;

export @symbol("SDL_SetRenderDrawColorFloat") fn SDL_SetRenderDrawColorFloat(
	renderer: nullable *SDL_Renderer,
	r: f32,
	g: f32,
	b: f32,
	a: f32,
) bool;

export @symbol("SDL_SetRenderLogicalPresentation") fn SDL_SetRenderLogicalPresentation(
	renderer: nullable *SDL_Renderer,
	w: int,
	h: int,
	mode: SDL_RendererLogicalPresentation,
) bool;

export @symbol("SDL_SetRenderScale") fn SDL_SetRenderScale(
	renderer: nullable *SDL_Renderer,
	scaleX: f32,
	scaleY: f32,
) bool;

export @symbol("SDL_SetRenderTarget") fn SDL_SetRenderTarget(
	renderer: nullable *SDL_Renderer,
	texture: nullable *SDL_Texture,
) bool;

export @symbol("SDL_SetRenderVSync") fn SDL_SetRenderVSync(
	renderer: nullable *SDL_Renderer,
	vsync: int,
) bool;

export @symbol("SDL_SetRenderViewport") fn SDL_SetRenderViewport(
	renderer: nullable *SDL_Renderer,
	rect: nullable *const SDL_Rect,
) bool;

export @symbol("SDL_SetTextureAlphaMod") fn SDL_SetTextureAlphaMod(
	texture: nullable *SDL_Texture,
	alpha: u8,
) bool;

export @symbol("SDL_SetTextureAlphaModFloat") fn SDL_SetTextureAlphaModFloat(
	texture: nullable *SDL_Texture,
	alpha: f32,
) bool;

export @symbol("SDL_SetTextureBlendMode") fn SDL_SetTextureBlendMode(
	texture: nullable *SDL_Texture,
	blendMode: SDL_BlendMode,
) bool;

export @symbol("SDL_SetTextureColorMod") fn SDL_SetTextureColorMod(
	texture: nullable *SDL_Texture,
	r: u8,
	g: u8,
	b: u8,
) bool;

export @symbol("SDL_SetTextureColorModFloat") fn SDL_SetTextureColorModFloat(
	texture: nullable *SDL_Texture,
	r: f32,
	g: f32,
	b: f32,
) bool;

export @symbol("SDL_SetTextureScaleMode") fn SDL_SetTextureScaleMode(
	texture: nullable *SDL_Texture,
	scaleMode: SDL_ScaleMode,
) bool;

export def SDL_TEXTUREACCESS_STATIC: int = 0;

export def SDL_TEXTUREACCESS_STREAMING: int = 1;

export def SDL_TEXTUREACCESS_TARGET: int = 2;

export type SDL_Texture = __struct_SDL_Texture;

export type SDL_TextureAccess = __enum_SDL_TextureAccess;

export @symbol("SDL_UnlockTexture") fn SDL_UnlockTexture(
	texture: nullable *SDL_Texture,
) void;

export @symbol("SDL_UpdateNVTexture") fn SDL_UpdateNVTexture(
	texture: nullable *SDL_Texture,
	rect: nullable *const SDL_Rect,
	Yplane: nullable *const u8,
	Ypitch: int,
	UVplane: nullable *const u8,
	UVpitch: int,
) bool;

export @symbol("SDL_UpdateTexture") fn SDL_UpdateTexture(
	texture: nullable *SDL_Texture,
	rect: nullable *const SDL_Rect,
	pixels: nullable *const opaque,
	pitch: int,
) bool;

export @symbol("SDL_UpdateYUVTexture") fn SDL_UpdateYUVTexture(
	texture: nullable *SDL_Texture,
	rect: nullable *const SDL_Rect,
	Yplane: nullable *const u8,
	Ypitch: int,
	Uplane: nullable *const u8,
	Upitch: int,
	Vplane: nullable *const u8,
	Vpitch: int,
) bool;

export type SDL_Vertex = __struct_SDL_Vertex;

export type __enum_SDL_RendererLogicalPresentation = uint;

export type __enum_SDL_TextureAccess = uint;

export type __struct_SDL_Renderer = opaque;

export type __struct_SDL_Texture = struct {
	format: SDL_PixelFormat,
	w: int,
	h: int,
	refcount: int,
};

export type __struct_SDL_Vertex = struct {
	position: SDL_FPoint,
	color: SDL_FColor,
	tex_coord: SDL_FPoint,
};
