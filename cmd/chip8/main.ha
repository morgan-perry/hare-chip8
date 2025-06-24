use sdl3::*;
use types::c;
use fmt;
use os;
use io;
use fs;
use time;
use bufio;
use types;

export fn main() void = {
	if (len(os::args) <= 1) fmt::fatalf("Please Provide a ROM File");

	let cpu = cpu_state {program_counter = 512, ...};
	load_rom(os::args[1], &cpu);

	cycle(&cpu);
	draw();
};

fn draw() void = {
	SDL_Init(SDL_INIT_VIDEO);
	defer SDL_Quit();

	const win: nullable *SDL_Window = null;
	const render: nullable *SDL_Renderer = null;
	SDL_CreateWindowAndRenderer(c::nulstr("hare-sdl3 demo\0"),
		640, 480, 0, &win, &render);
	assert(win != null); assert(render != null);
	defer SDL_DestroyWindow(win);

	let rect = SDL_FRect { x = 0.0, y = 0.0, w = 50.0, h = 50.0, };

	let run = true;
	let ev = SDL_Event { ... };
	for (run) {
		for (SDL_PollEvent(&ev)) {
			switch (ev.__type) {
			case SDL_EVENT_QUIT => run = false;
			case => continue;
			};
			// if (ev.__type == SDL_EVENT_QUIT) {
			// 	run = false;
			// };
		};

		SDL_RenderClear(render);
		SDL_SetRenderDrawColor(render, 255, 255, 118, 255);
		SDL_RenderFillRect(render, &rect);
		SDL_SetRenderDrawColor(render, 29, 31, 33, 0);
		SDL_RenderPresent(render);
	};
};
