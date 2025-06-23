use types::c;

export @symbol("SDL_CloseIO") fn SDL_CloseIO(
	context: nullable *SDL_IOStream,
) bool;

export @symbol("SDL_FlushIO") fn SDL_FlushIO(
	context: nullable *SDL_IOStream,
) bool;

export @symbol("SDL_GetIOProperties") fn SDL_GetIOProperties(
	context: nullable *SDL_IOStream,
) SDL_PropertiesID;

export @symbol("SDL_GetIOSize") fn SDL_GetIOSize(
	context: nullable *SDL_IOStream,
) i64;

export @symbol("SDL_GetIOStatus") fn SDL_GetIOStatus(
	context: nullable *SDL_IOStream,
) SDL_IOStatus;

export @symbol("SDL_IOFromConstMem") fn SDL_IOFromConstMem(
	mem: nullable *const opaque,
	__size: size,
) nullable *SDL_IOStream;

export @symbol("SDL_IOFromDynamicMem") fn SDL_IOFromDynamicMem(
) nullable *SDL_IOStream;

export @symbol("SDL_IOFromFile") fn SDL_IOFromFile(
	file: nullable *const c::char,
	mode: nullable *const c::char,
) nullable *SDL_IOStream;

export @symbol("SDL_IOFromMem") fn SDL_IOFromMem(
	mem: nullable *opaque,
	__size: size,
) nullable *SDL_IOStream;

export type SDL_IOStatus = __enum_SDL_IOStatus;

export type SDL_IOStream = __struct_SDL_IOStream;

export type SDL_IOStreamInterface = __struct_SDL_IOStreamInterface;

export type SDL_IOWhence = __enum_SDL_IOWhence;

export def SDL_IO_SEEK_CUR: int = 1;

export def SDL_IO_SEEK_END: int = 2;

export def SDL_IO_SEEK_SET: int = 0;

export def SDL_IO_STATUS_EOF: int = 2;

export def SDL_IO_STATUS_ERROR: int = 1;

export def SDL_IO_STATUS_NOT_READY: int = 3;

export def SDL_IO_STATUS_READONLY: int = 4;

export def SDL_IO_STATUS_READY: int = 0;

export def SDL_IO_STATUS_WRITEONLY: int = 5;

export @symbol("SDL_IOprintf") fn SDL_IOprintf(
	context: nullable *SDL_IOStream,
	fmt: nullable *const c::char,
	...
) size;

export @symbol("SDL_IOvprintf") fn SDL_IOvprintf(
	context: nullable *SDL_IOStream,
	fmt: nullable *const c::char,
	ap: valist,
) size;

export @symbol("SDL_LoadFile") fn SDL_LoadFile(
	file: nullable *const c::char,
	datasize: nullable *size,
) nullable *opaque;

export @symbol("SDL_LoadFile_IO") fn SDL_LoadFile_IO(
	src: nullable *SDL_IOStream,
	datasize: nullable *size,
	closeio: bool,
) nullable *opaque;

export @symbol("SDL_OpenIO") fn SDL_OpenIO(
	iface: nullable *const SDL_IOStreamInterface,
	userdata: nullable *opaque,
) nullable *SDL_IOStream;

export @symbol("SDL_ReadIO") fn SDL_ReadIO(
	context: nullable *SDL_IOStream,
	ptr: nullable *opaque,
	__size: size,
) size;

export @symbol("SDL_ReadS16BE") fn SDL_ReadS16BE(
	src: nullable *SDL_IOStream,
	value: nullable *i16,
) bool;

export @symbol("SDL_ReadS16LE") fn SDL_ReadS16LE(
	src: nullable *SDL_IOStream,
	value: nullable *i16,
) bool;

export @symbol("SDL_ReadS32BE") fn SDL_ReadS32BE(
	src: nullable *SDL_IOStream,
	value: nullable *i32,
) bool;

export @symbol("SDL_ReadS32LE") fn SDL_ReadS32LE(
	src: nullable *SDL_IOStream,
	value: nullable *i32,
) bool;

export @symbol("SDL_ReadS64BE") fn SDL_ReadS64BE(
	src: nullable *SDL_IOStream,
	value: nullable *i64,
) bool;

export @symbol("SDL_ReadS64LE") fn SDL_ReadS64LE(
	src: nullable *SDL_IOStream,
	value: nullable *i64,
) bool;

export @symbol("SDL_ReadS8") fn SDL_ReadS8(
	src: nullable *SDL_IOStream,
	value: nullable *i8,
) bool;

export @symbol("SDL_ReadU16BE") fn SDL_ReadU16BE(
	src: nullable *SDL_IOStream,
	value: nullable *u16,
) bool;

export @symbol("SDL_ReadU16LE") fn SDL_ReadU16LE(
	src: nullable *SDL_IOStream,
	value: nullable *u16,
) bool;

export @symbol("SDL_ReadU32BE") fn SDL_ReadU32BE(
	src: nullable *SDL_IOStream,
	value: nullable *u32,
) bool;

export @symbol("SDL_ReadU32LE") fn SDL_ReadU32LE(
	src: nullable *SDL_IOStream,
	value: nullable *u32,
) bool;

export @symbol("SDL_ReadU64BE") fn SDL_ReadU64BE(
	src: nullable *SDL_IOStream,
	value: nullable *u64,
) bool;

export @symbol("SDL_ReadU64LE") fn SDL_ReadU64LE(
	src: nullable *SDL_IOStream,
	value: nullable *u64,
) bool;

export @symbol("SDL_ReadU8") fn SDL_ReadU8(
	src: nullable *SDL_IOStream,
	value: nullable *u8,
) bool;

export @symbol("SDL_SaveFile") fn SDL_SaveFile(
	file: nullable *const c::char,
	data: nullable *const opaque,
	datasize: size,
) bool;

export @symbol("SDL_SaveFile_IO") fn SDL_SaveFile_IO(
	src: nullable *SDL_IOStream,
	data: nullable *const opaque,
	datasize: size,
	closeio: bool,
) bool;

export @symbol("SDL_SeekIO") fn SDL_SeekIO(
	context: nullable *SDL_IOStream,
	__offset: i64,
	whence: SDL_IOWhence,
) i64;

export @symbol("SDL_TellIO") fn SDL_TellIO(
	context: nullable *SDL_IOStream,
) i64;

export @symbol("SDL_WriteIO") fn SDL_WriteIO(
	context: nullable *SDL_IOStream,
	ptr: nullable *const opaque,
	__size: size,
) size;

export @symbol("SDL_WriteS16BE") fn SDL_WriteS16BE(
	dst: nullable *SDL_IOStream,
	value: i16,
) bool;

export @symbol("SDL_WriteS16LE") fn SDL_WriteS16LE(
	dst: nullable *SDL_IOStream,
	value: i16,
) bool;

export @symbol("SDL_WriteS32BE") fn SDL_WriteS32BE(
	dst: nullable *SDL_IOStream,
	value: i32,
) bool;

export @symbol("SDL_WriteS32LE") fn SDL_WriteS32LE(
	dst: nullable *SDL_IOStream,
	value: i32,
) bool;

export @symbol("SDL_WriteS64BE") fn SDL_WriteS64BE(
	dst: nullable *SDL_IOStream,
	value: i64,
) bool;

export @symbol("SDL_WriteS64LE") fn SDL_WriteS64LE(
	dst: nullable *SDL_IOStream,
	value: i64,
) bool;

export @symbol("SDL_WriteS8") fn SDL_WriteS8(
	dst: nullable *SDL_IOStream,
	value: i8,
) bool;

export @symbol("SDL_WriteU16BE") fn SDL_WriteU16BE(
	dst: nullable *SDL_IOStream,
	value: u16,
) bool;

export @symbol("SDL_WriteU16LE") fn SDL_WriteU16LE(
	dst: nullable *SDL_IOStream,
	value: u16,
) bool;

export @symbol("SDL_WriteU32BE") fn SDL_WriteU32BE(
	dst: nullable *SDL_IOStream,
	value: u32,
) bool;

export @symbol("SDL_WriteU32LE") fn SDL_WriteU32LE(
	dst: nullable *SDL_IOStream,
	value: u32,
) bool;

export @symbol("SDL_WriteU64BE") fn SDL_WriteU64BE(
	dst: nullable *SDL_IOStream,
	value: u64,
) bool;

export @symbol("SDL_WriteU64LE") fn SDL_WriteU64LE(
	dst: nullable *SDL_IOStream,
	value: u64,
) bool;

export @symbol("SDL_WriteU8") fn SDL_WriteU8(
	dst: nullable *SDL_IOStream,
	value: u8,
) bool;

export type __enum_SDL_IOStatus = uint;

export type __enum_SDL_IOWhence = uint;

export type __struct_SDL_IOStream = opaque;

export type __struct_SDL_IOStreamInterface = struct {
	version: u32,
	__size: nullable *const fn(userdata: nullable *opaque) i64,
	seek: nullable *const fn(
		userdata: nullable *opaque,
		__offset: i64,
		whence: SDL_IOWhence,
	) i64,
	read: nullable *const fn(
		userdata: nullable *opaque,
		ptr: nullable *opaque,
		__size: size,
		status: nullable *SDL_IOStatus,
	) size,
	write: nullable *const fn(
		userdata: nullable *opaque,
		ptr: nullable *const opaque,
		__size: size,
		status: nullable *SDL_IOStatus,
	) size,
	flush: nullable *const fn(
		userdata: nullable *opaque,
		status: nullable *SDL_IOStatus,
	) bool,
	close: nullable *const fn(userdata: nullable *opaque) bool,
};
