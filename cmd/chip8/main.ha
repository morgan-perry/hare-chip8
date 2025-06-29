use sdl3::*;
use types::c;
use fmt;
use os;
use io;
use fs;
use time;
use bufio;
use types;
use time;

type draw_state = struct {
	render: *SDL_Renderer,
	win: *SDL_Window,
	texture: *SDL_Texture,
};

export fn main() void = {
	if (len(os::args) <= 1) fmt::fatalf("Please Provide a ROM File");

	let cpu = cpu_state {program_counter = 512, ...};
	load_font(&cpu);
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
	const sleep_duration: time::duration = time::MILLISECOND*100;

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
		let dest = SDL_FRect { x = 0.0, y = 0.0, w = 640.0, h = 480.0};
		SDL_RenderTexture(draw.render, draw.texture, null, &dest);
		SDL_RenderPresent(draw.render);

		time::sleep(sleep_duration);
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

	// Renders pixels without blur
	SDL_SetTextureScaleMode(text, SDL_SCALEMODE_NEAREST);
	// SDL_SetHint("SDL_HINT_RENDER_SCALE_QUALITY\0", "nearest\0");

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
