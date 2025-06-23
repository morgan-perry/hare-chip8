use sdl3::*;
use types::c;

export fn main() void = {
	SDL_Init(SDL_INIT_VIDEO);
	defer SDL_Quit();

	const win = SDL_CreateWindow(
		c::nulstr("hare-sdl3 demo\0"),
		640, 480, 0);
	assert(win != null);
	defer SDL_DestroyWindow(win);

	const render = SDL_CreateRenderer(win, null);
	assert(render != null);

	let rect = SDL_FRect {
		x = 0.0,
		y = 0.0,
		w = 50.0,
		h = 50.0,	
	};

	let run = true;
	let ev = SDL_Event { ... };
	for (run) {
		for (SDL_PollEvent(&ev)) {
			if (ev.__type == SDL_EVENT_QUIT) {
				run = false;
			};
		};

		SDL_RenderClear(render);
		SDL_SetRenderDrawColor(render, 255, 255, 118, 255);
		SDL_RenderFillRect(render, &rect);
		SDL_SetRenderDrawColor(render, 29, 31, 33, 0);
		SDL_RenderPresent(render);
	};
};
