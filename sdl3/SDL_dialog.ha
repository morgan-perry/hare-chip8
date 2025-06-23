use types::c;

export type SDL_DialogFileCallback = nullable *const fn(
	userdata: nullable *opaque,
	filelist: nullable *const nullable *const c::char,
	filter: int,
) void;

export type SDL_DialogFileFilter = __struct_SDL_DialogFileFilter;

export def SDL_FILEDIALOG_OPENFILE: int = 0;

export def SDL_FILEDIALOG_OPENFOLDER: int = 2;

export def SDL_FILEDIALOG_SAVEFILE: int = 1;

export type SDL_FileDialogType = __enum_SDL_FileDialogType;

export @symbol("SDL_ShowFileDialogWithProperties") fn SDL_ShowFileDialogWithProperties(
	__type: SDL_FileDialogType,
	callback: SDL_DialogFileCallback,
	userdata: nullable *opaque,
	props: SDL_PropertiesID,
) void;

export @symbol("SDL_ShowOpenFileDialog") fn SDL_ShowOpenFileDialog(
	callback: SDL_DialogFileCallback,
	userdata: nullable *opaque,
	window: nullable *SDL_Window,
	filters: nullable *const SDL_DialogFileFilter,
	nfilters: int,
	default_location: nullable *const c::char,
	allow_many: bool,
) void;

export @symbol("SDL_ShowOpenFolderDialog") fn SDL_ShowOpenFolderDialog(
	callback: SDL_DialogFileCallback,
	userdata: nullable *opaque,
	window: nullable *SDL_Window,
	default_location: nullable *const c::char,
	allow_many: bool,
) void;

export @symbol("SDL_ShowSaveFileDialog") fn SDL_ShowSaveFileDialog(
	callback: SDL_DialogFileCallback,
	userdata: nullable *opaque,
	window: nullable *SDL_Window,
	filters: nullable *const SDL_DialogFileFilter,
	nfilters: int,
	default_location: nullable *const c::char,
) void;

export type __enum_SDL_FileDialogType = uint;

export type __struct_SDL_DialogFileFilter = struct {
	name: nullable *const c::char,
	pattern: nullable *const c::char,
};
