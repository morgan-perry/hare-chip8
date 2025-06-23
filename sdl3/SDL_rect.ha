export type SDL_FPoint = __struct_SDL_FPoint;

export type SDL_FRect = __struct_SDL_FRect;

export @symbol("SDL_GetRectAndLineIntersection") fn SDL_GetRectAndLineIntersection(
	rect: nullable *const SDL_Rect,
	X1: nullable *int,
	Y1: nullable *int,
	X2: nullable *int,
	Y2: nullable *int,
) bool;

export @symbol("SDL_GetRectAndLineIntersectionFloat") fn SDL_GetRectAndLineIntersectionFloat(
	rect: nullable *const SDL_FRect,
	X1: nullable *f32,
	Y1: nullable *f32,
	X2: nullable *f32,
	Y2: nullable *f32,
) bool;

export @symbol("SDL_GetRectEnclosingPoints") fn SDL_GetRectEnclosingPoints(
	points: nullable *const SDL_Point,
	count: int,
	clip: nullable *const SDL_Rect,
	result: nullable *SDL_Rect,
) bool;

export @symbol("SDL_GetRectEnclosingPointsFloat") fn SDL_GetRectEnclosingPointsFloat(
	points: nullable *const SDL_FPoint,
	count: int,
	clip: nullable *const SDL_FRect,
	result: nullable *SDL_FRect,
) bool;

export @symbol("SDL_GetRectIntersection") fn SDL_GetRectIntersection(
	A: nullable *const SDL_Rect,
	B: nullable *const SDL_Rect,
	result: nullable *SDL_Rect,
) bool;

export @symbol("SDL_GetRectIntersectionFloat") fn SDL_GetRectIntersectionFloat(
	A: nullable *const SDL_FRect,
	B: nullable *const SDL_FRect,
	result: nullable *SDL_FRect,
) bool;

export @symbol("SDL_GetRectUnion") fn SDL_GetRectUnion(
	A: nullable *const SDL_Rect,
	B: nullable *const SDL_Rect,
	result: nullable *SDL_Rect,
) bool;

export @symbol("SDL_GetRectUnionFloat") fn SDL_GetRectUnionFloat(
	A: nullable *const SDL_FRect,
	B: nullable *const SDL_FRect,
	result: nullable *SDL_FRect,
) bool;

export @symbol("SDL_HasRectIntersection") fn SDL_HasRectIntersection(
	A: nullable *const SDL_Rect,
	B: nullable *const SDL_Rect,
) bool;

export @symbol("SDL_HasRectIntersectionFloat") fn SDL_HasRectIntersectionFloat(
	A: nullable *const SDL_FRect,
	B: nullable *const SDL_FRect,
) bool;

export type SDL_Point = __struct_SDL_Point;

export type SDL_Rect = __struct_SDL_Rect;

export type __struct_SDL_FPoint = struct {
	x: f32,
	y: f32,
};

export type __struct_SDL_FRect = struct {
	x: f32,
	y: f32,
	w: f32,
	h: f32,
};

export type __struct_SDL_Point = struct {
	x: int,
	y: int,
};

export type __struct_SDL_Rect = struct {
	x: int,
	y: int,
	w: int,
	h: int,
};
