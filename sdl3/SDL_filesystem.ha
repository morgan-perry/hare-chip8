use types::c;

export @symbol("SDL_CopyFile") fn SDL_CopyFile(
	oldpath: nullable *const c::char,
	newpath: nullable *const c::char,
) bool;

export @symbol("SDL_CreateDirectory") fn SDL_CreateDirectory(
	path: nullable *const c::char,
) bool;

export def SDL_ENUM_CONTINUE: int = 0;

export def SDL_ENUM_FAILURE: int = 2;

export def SDL_ENUM_SUCCESS: int = 1;

export @symbol("SDL_EnumerateDirectory") fn SDL_EnumerateDirectory(
	path: nullable *const c::char,
	callback: SDL_EnumerateDirectoryCallback,
	userdata: nullable *opaque,
) bool;

export type SDL_EnumerateDirectoryCallback = nullable *const fn(
	userdata: nullable *opaque,
	dirname: nullable *const c::char,
	fname: nullable *const c::char,
) SDL_EnumerationResult;

export type SDL_EnumerationResult = __enum_SDL_EnumerationResult;

export def SDL_FOLDER_COUNT: int = 11;

export def SDL_FOLDER_DESKTOP: int = 1;

export def SDL_FOLDER_DOCUMENTS: int = 2;

export def SDL_FOLDER_DOWNLOADS: int = 3;

export def SDL_FOLDER_HOME: int = 0;

export def SDL_FOLDER_MUSIC: int = 4;

export def SDL_FOLDER_PICTURES: int = 5;

export def SDL_FOLDER_PUBLICSHARE: int = 6;

export def SDL_FOLDER_SAVEDGAMES: int = 7;

export def SDL_FOLDER_SCREENSHOTS: int = 8;

export def SDL_FOLDER_TEMPLATES: int = 9;

export def SDL_FOLDER_VIDEOS: int = 10;

export type SDL_Folder = __enum_SDL_Folder;

export @symbol("SDL_GetBasePath") fn SDL_GetBasePath() nullable *const c::char;

export @symbol("SDL_GetCurrentDirectory") fn SDL_GetCurrentDirectory(
) nullable *c::char;

export @symbol("SDL_GetPathInfo") fn SDL_GetPathInfo(
	path: nullable *const c::char,
	info: nullable *SDL_PathInfo,
) bool;

export @symbol("SDL_GetPrefPath") fn SDL_GetPrefPath(
	org: nullable *const c::char,
	app: nullable *const c::char,
) nullable *c::char;

export @symbol("SDL_GetUserFolder") fn SDL_GetUserFolder(
	folder: SDL_Folder,
) nullable *const c::char;

export @symbol("SDL_GlobDirectory") fn SDL_GlobDirectory(
	path: nullable *const c::char,
	pattern: nullable *const c::char,
	flags: SDL_GlobFlags,
	count: nullable *int,
) nullable *nullable *c::char;

export type SDL_GlobFlags = u32;

export def SDL_PATHTYPE_DIRECTORY: int = 2;

export def SDL_PATHTYPE_FILE: int = 1;

export def SDL_PATHTYPE_NONE: int = 0;

export def SDL_PATHTYPE_OTHER: int = 3;

export type SDL_PathInfo = __struct_SDL_PathInfo;

export type SDL_PathType = __enum_SDL_PathType;

export @symbol("SDL_RemovePath") fn SDL_RemovePath(
	path: nullable *const c::char,
) bool;

export @symbol("SDL_RenamePath") fn SDL_RenamePath(
	oldpath: nullable *const c::char,
	newpath: nullable *const c::char,
) bool;

export type __enum_SDL_EnumerationResult = uint;

export type __enum_SDL_Folder = uint;

export type __enum_SDL_PathType = uint;

export type __struct_SDL_PathInfo = struct {
	__type: SDL_PathType,
	__size: u64,
	create_time: i64,
	modify_time: i64,
	access_time: i64,
};
