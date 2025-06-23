use types::c;

export @symbol("SDL_CreateProcess") fn SDL_CreateProcess(
	args: nullable *const nullable *const c::char,
	pipe_stdio: bool,
) nullable *SDL_Process;

export @symbol("SDL_CreateProcessWithProperties") fn SDL_CreateProcessWithProperties(
	props: SDL_PropertiesID,
) nullable *SDL_Process;

export @symbol("SDL_DestroyProcess") fn SDL_DestroyProcess(
	process: nullable *SDL_Process,
) void;

export @symbol("SDL_GetProcessInput") fn SDL_GetProcessInput(
	process: nullable *SDL_Process,
) nullable *SDL_IOStream;

export @symbol("SDL_GetProcessOutput") fn SDL_GetProcessOutput(
	process: nullable *SDL_Process,
) nullable *SDL_IOStream;

export @symbol("SDL_GetProcessProperties") fn SDL_GetProcessProperties(
	process: nullable *SDL_Process,
) SDL_PropertiesID;

export @symbol("SDL_KillProcess") fn SDL_KillProcess(
	process: nullable *SDL_Process,
	force: bool,
) bool;

export def SDL_PROCESS_STDIO_APP: int = 2;

export def SDL_PROCESS_STDIO_INHERITED: int = 0;

export def SDL_PROCESS_STDIO_NULL: int = 1;

export def SDL_PROCESS_STDIO_REDIRECT: int = 3;

export type SDL_Process = __struct_SDL_Process;

export type SDL_ProcessIO = __enum_SDL_ProcessIO;

export @symbol("SDL_ReadProcess") fn SDL_ReadProcess(
	process: nullable *SDL_Process,
	datasize: nullable *size,
	exitcode: nullable *int,
) nullable *opaque;

export @symbol("SDL_WaitProcess") fn SDL_WaitProcess(
	process: nullable *SDL_Process,
	block: bool,
	exitcode: nullable *int,
) bool;

export type __enum_SDL_ProcessIO = uint;

export type __struct_SDL_Process = opaque;
