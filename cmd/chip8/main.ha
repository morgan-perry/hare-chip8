use sdl3::*;
use types::c;
use fmt;
use os;
use io;
use fs;
use time;
use bufio;
use types;

type draw_state = struct {
	render: *SDL_Renderer,
	win: *SDL_Window,
	texture: *SDL_Texture,
};

export fn main() void = {
	if (len(os::args) <= 1) fmt::fatalf("Please Provide a ROM File");

	let cpu = cpu_state {program_counter = 512, ...};
	load_rom(os::args[1], &cpu);
	let draw = draw_state_init();
	defer draw_state_deinit(&draw);

	simulate(&cpu, &draw);
};

fn build_texture(cpu: *cpu_state, draw: *draw_state) void = {
	let pixels_ptr: nullable *opaque = null;
	let pitch: int = 0;
	const ok = SDL_LockTexture(draw.texture, null, &pixels_ptr, &pitch);
    	assert(ok, "SDL_LockTexture failed");

   	match (pixels_ptr) {
    	case null =>
        	fmt::fatalf("SDL_LockTexture returned null buffer");
    	case let raw: *opaque =>
        	// Case from void* to uinptr then to *[]u32
        	const pixels = (raw: uintptr) : *[2048]u32;

		for (let y = 0z; y < 32; y += 1) {
			for (let x = 0z; x < 64; x += 1) {
            			pixels[y * 64 + x] =
				if (cpu.display[y * 64 + x] == 1) 0xFFFFFFFF
            			else 0x000000FF;
			};
		};
    	};

	SDL_UnlockTexture(draw.texture);
};


fn simulate(cpu: *cpu_state, draw: *draw_state) void = {
	let run = true;
	let ev = SDL_Event { ... };

	for (run) {
		cycle(cpu);

		for (SDL_PollEvent(&ev)) {
			switch (ev.__type) {
			case SDL_EVENT_QUIT => run = false;
			case => continue;
			};
		};

		SDL_RenderClear(draw.render);

		build_texture(cpu, draw);

		let dest = SDL_FRect { x = 0.0, y = 0.0, w = 1024.0, h = 512.0};

		SDL_SetRenderDrawColor(draw.render, 255, 255, 118, 255);
		SDL_RenderTexture(draw.render, draw.texture, null, &dest);
		SDL_SetRenderDrawColor(draw.render, 29, 31, 33, 0);
		SDL_RenderPresent(draw.render);
	};
};

fn draw_state_init() draw_state = {
	SDL_Init(SDL_INIT_VIDEO);

	const window: nullable *SDL_Window = null;
	const rend: nullable *SDL_Renderer = null;
	SDL_CreateWindowAndRenderer(c::nulstr("hare-sdl3 demo\0"),
		640, 480, 0, &window, &rend);
	assert(window != null); assert(rend != null);

	let text = SDL_CreateTexture(rend,
		SDL_PIXELFORMAT_RGBA8888: SDL_PixelFormat,
		SDL_TEXTUREACCESS_STREAMING: SDL_TextureAccess, 64, 32);

	return draw_state {
		render = rend as *SDL_Renderer,
		win = window as *SDL_Window,
		texture = text as *SDL_Texture,
	};
};

fn draw_state_deinit(draw: *draw_state) void = {
	SDL_Quit();
	SDL_DestroyTexture(draw.texture);
	SDL_DestroyRenderer(draw.render);
	SDL_DestroyWindow(draw.win);
	SDL_DestroyWindow(draw.win);
};
