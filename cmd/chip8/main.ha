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

const keymap: [_]int = [
    SDL_SCANCODE_X,
    SDL_SCANCODE_1,
    SDL_SCANCODE_2,
    SDL_SCANCODE_3,
    SDL_SCANCODE_Q,
    SDL_SCANCODE_W,
    SDL_SCANCODE_E,
    SDL_SCANCODE_A,
    SDL_SCANCODE_S,
    SDL_SCANCODE_D,
    SDL_SCANCODE_Z,
    SDL_SCANCODE_C,
    SDL_SCANCODE_4,
    SDL_SCANCODE_R,
    SDL_SCANCODE_F,
    SDL_SCANCODE_V,
];

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
        	const pixels = raw: *[2048]u32;

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

fn process_inputs(ev: *SDL_Event, cpu: *cpu_state, run: *bool) void = {
	for (SDL_PollEvent(ev)) switch (ev.__type) {
		case SDL_EVENT_QUIT => *run = false;
		case SDL_EVENT_KEY_DOWN =>
		if (ev.key.scancode: int == SDL_SCANCODE_ESCAPE)
			*run = false;
		for (let i = 0z; i < len(keymap); i += 1) {
			if (ev.key.scancode == keymap[i]: SDL_Scancode)
				cpu.keys[i] = 1;
		};
		case SDL_EVENT_KEY_UP =>
		for (let i = 0z; i < len(keymap); i += 1) {
			if (ev.key.scancode == keymap[i]: SDL_Scancode)
				cpu.keys[i] = 0;
		};
		case => continue;
	};
};

fn simulate(cpu: *cpu_state, draw: *draw_state) void = {
	let run = true;
	let ev = SDL_Event { ... };
	let last_cycle_time = time::now(time::clock::MONOTONIC);

	for (run) {
		let now = time::now(time::clock::MONOTONIC);
		let dt = time::diff(last_cycle_time, now);

		process_inputs(&ev, cpu, &run);
		last_cycle_time = now;
		cycle(cpu);

		if (cpu.delay_timer > 0) cpu.delay_timer -= 1;
		if (cpu.sound_timer > 0) cpu.sound_timer -= 1;

		SDL_RenderClear(draw.render);
		build_texture(cpu, draw);
		let dest = SDL_FRect { x = 0.0, y = 0.0, w = 640.0, h = 480.0};
		SDL_RenderTexture(draw.render, draw.texture, null, &dest);
		SDL_RenderPresent(draw.render);

		time::sleep(time::MILLISECOND * 1);
	};
};

fn draw_state_init() draw_state = {
	SDL_Init(SDL_INIT_VIDEO);

	const window: nullable *SDL_Window = null;
	const rend: nullable *SDL_Renderer = null;
	SDL_CreateWindowAndRenderer(c::nulstr("hare-sdl3\0"),
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
