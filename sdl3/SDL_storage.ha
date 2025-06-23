use types::c;

export @symbol("SDL_CloseStorage") fn SDL_CloseStorage(
	storage: nullable *SDL_Storage,
) bool;

export @symbol("SDL_CopyStorageFile") fn SDL_CopyStorageFile(
	storage: nullable *SDL_Storage,
	oldpath: nullable *const c::char,
	newpath: nullable *const c::char,
) bool;

export @symbol("SDL_CreateStorageDirectory") fn SDL_CreateStorageDirectory(
	storage: nullable *SDL_Storage,
	path: nullable *const c::char,
) bool;

export @symbol("SDL_EnumerateStorageDirectory") fn SDL_EnumerateStorageDirectory(
	storage: nullable *SDL_Storage,
	path: nullable *const c::char,
	callback: SDL_EnumerateDirectoryCallback,
	userdata: nullable *opaque,
) bool;

export @symbol("SDL_GetStorageFileSize") fn SDL_GetStorageFileSize(
	storage: nullable *SDL_Storage,
	path: nullable *const c::char,
	length: nullable *u64,
) bool;

export @symbol("SDL_GetStoragePathInfo") fn SDL_GetStoragePathInfo(
	storage: nullable *SDL_Storage,
	path: nullable *const c::char,
	info: nullable *SDL_PathInfo,
) bool;

export @symbol("SDL_GetStorageSpaceRemaining") fn SDL_GetStorageSpaceRemaining(
	storage: nullable *SDL_Storage,
) u64;

export @symbol("SDL_GlobStorageDirectory") fn SDL_GlobStorageDirectory(
	storage: nullable *SDL_Storage,
	path: nullable *const c::char,
	pattern: nullable *const c::char,
	flags: SDL_GlobFlags,
	count: nullable *int,
) nullable *nullable *c::char;

export @symbol("SDL_OpenFileStorage") fn SDL_OpenFileStorage(
	path: nullable *const c::char,
) nullable *SDL_Storage;

export @symbol("SDL_OpenStorage") fn SDL_OpenStorage(
	iface: nullable *const SDL_StorageInterface,
	userdata: nullable *opaque,
) nullable *SDL_Storage;

export @symbol("SDL_OpenTitleStorage") fn SDL_OpenTitleStorage(
	override: nullable *const c::char,
	props: SDL_PropertiesID,
) nullable *SDL_Storage;

export @symbol("SDL_OpenUserStorage") fn SDL_OpenUserStorage(
	org: nullable *const c::char,
	app: nullable *const c::char,
	props: SDL_PropertiesID,
) nullable *SDL_Storage;

export @symbol("SDL_ReadStorageFile") fn SDL_ReadStorageFile(
	storage: nullable *SDL_Storage,
	path: nullable *const c::char,
	destination: nullable *opaque,
	length: u64,
) bool;

export @symbol("SDL_RemoveStoragePath") fn SDL_RemoveStoragePath(
	storage: nullable *SDL_Storage,
	path: nullable *const c::char,
) bool;

export @symbol("SDL_RenameStoragePath") fn SDL_RenameStoragePath(
	storage: nullable *SDL_Storage,
	oldpath: nullable *const c::char,
	newpath: nullable *const c::char,
) bool;

export type SDL_Storage = __struct_SDL_Storage;

export type SDL_StorageInterface = __struct_SDL_StorageInterface;

export @symbol("SDL_StorageReady") fn SDL_StorageReady(
	storage: nullable *SDL_Storage,
) bool;

export @symbol("SDL_WriteStorageFile") fn SDL_WriteStorageFile(
	storage: nullable *SDL_Storage,
	path: nullable *const c::char,
	source: nullable *const opaque,
	length: u64,
) bool;

export type __struct_SDL_Storage = opaque;

export type __struct_SDL_StorageInterface = struct {
	version: u32,
	close: nullable *const fn(userdata: nullable *opaque) bool,
	ready: nullable *const fn(userdata: nullable *opaque) bool,
	enumerate: nullable *const fn(
		userdata: nullable *opaque,
		path: nullable *const c::char,
		callback: SDL_EnumerateDirectoryCallback,
		callback_userdata: nullable *opaque,
	) bool,
	info: nullable *const fn(
		userdata: nullable *opaque,
		path: nullable *const c::char,
		info: nullable *SDL_PathInfo,
	) bool,
	read_file: nullable *const fn(
		userdata: nullable *opaque,
		path: nullable *const c::char,
		destination: nullable *opaque,
		length: u64,
	) bool,
	write_file: nullable *const fn(
		userdata: nullable *opaque,
		path: nullable *const c::char,
		source: nullable *const opaque,
		length: u64,
	) bool,
	mkdir: nullable *const fn(
		userdata: nullable *opaque,
		path: nullable *const c::char,
	) bool,
	remove: nullable *const fn(
		userdata: nullable *opaque,
		path: nullable *const c::char,
	) bool,
	rename: nullable *const fn(
		userdata: nullable *opaque,
		oldpath: nullable *const c::char,
		newpath: nullable *const c::char,
	) bool,
	copy: nullable *const fn(
		userdata: nullable *opaque,
		oldpath: nullable *const c::char,
		newpath: nullable *const c::char,
	) bool,
	space_remaining: nullable *const fn(
		userdata: nullable *opaque,
	) u64,
};
