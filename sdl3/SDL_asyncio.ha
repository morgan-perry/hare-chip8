use types::c;

export def SDL_ASYNCIO_CANCELED: int = 2;

export def SDL_ASYNCIO_COMPLETE: int = 0;

export def SDL_ASYNCIO_FAILURE: int = 1;

export def SDL_ASYNCIO_TASK_CLOSE: int = 2;

export def SDL_ASYNCIO_TASK_READ: int = 0;

export def SDL_ASYNCIO_TASK_WRITE: int = 1;

export type SDL_AsyncIO = __struct_SDL_AsyncIO;

export @symbol("SDL_AsyncIOFromFile") fn SDL_AsyncIOFromFile(
	file: nullable *const c::char,
	mode: nullable *const c::char,
) nullable *SDL_AsyncIO;

export type SDL_AsyncIOOutcome = __struct_SDL_AsyncIOOutcome;

export type SDL_AsyncIOQueue = __struct_SDL_AsyncIOQueue;

export type SDL_AsyncIOResult = __enum_SDL_AsyncIOResult;

export type SDL_AsyncIOTaskType = __enum_SDL_AsyncIOTaskType;

export @symbol("SDL_CloseAsyncIO") fn SDL_CloseAsyncIO(
	asyncio: nullable *SDL_AsyncIO,
	flush: bool,
	queue: nullable *SDL_AsyncIOQueue,
	userdata: nullable *opaque,
) bool;

export @symbol("SDL_CreateAsyncIOQueue") fn SDL_CreateAsyncIOQueue(
) nullable *SDL_AsyncIOQueue;

export @symbol("SDL_DestroyAsyncIOQueue") fn SDL_DestroyAsyncIOQueue(
	queue: nullable *SDL_AsyncIOQueue,
) void;

export @symbol("SDL_GetAsyncIOResult") fn SDL_GetAsyncIOResult(
	queue: nullable *SDL_AsyncIOQueue,
	outcome: nullable *SDL_AsyncIOOutcome,
) bool;

export @symbol("SDL_GetAsyncIOSize") fn SDL_GetAsyncIOSize(
	asyncio: nullable *SDL_AsyncIO,
) i64;

export @symbol("SDL_LoadFileAsync") fn SDL_LoadFileAsync(
	file: nullable *const c::char,
	queue: nullable *SDL_AsyncIOQueue,
	userdata: nullable *opaque,
) bool;

export @symbol("SDL_ReadAsyncIO") fn SDL_ReadAsyncIO(
	asyncio: nullable *SDL_AsyncIO,
	ptr: nullable *opaque,
	__offset: u64,
	__size: u64,
	queue: nullable *SDL_AsyncIOQueue,
	userdata: nullable *opaque,
) bool;

export @symbol("SDL_SignalAsyncIOQueue") fn SDL_SignalAsyncIOQueue(
	queue: nullable *SDL_AsyncIOQueue,
) void;

export @symbol("SDL_WaitAsyncIOResult") fn SDL_WaitAsyncIOResult(
	queue: nullable *SDL_AsyncIOQueue,
	outcome: nullable *SDL_AsyncIOOutcome,
	timeoutMS: i32,
) bool;

export @symbol("SDL_WriteAsyncIO") fn SDL_WriteAsyncIO(
	asyncio: nullable *SDL_AsyncIO,
	ptr: nullable *opaque,
	__offset: u64,
	__size: u64,
	queue: nullable *SDL_AsyncIOQueue,
	userdata: nullable *opaque,
) bool;

export type __enum_SDL_AsyncIOResult = uint;

export type __enum_SDL_AsyncIOTaskType = uint;

export type __struct_SDL_AsyncIO = opaque;

export type __struct_SDL_AsyncIOOutcome = struct {
	asyncio: nullable *SDL_AsyncIO,
	__type: SDL_AsyncIOTaskType,
	result: SDL_AsyncIOResult,
	buffer: nullable *opaque,
	__offset: u64,
	bytes_requested: u64,
	bytes_transferred: u64,
	userdata: nullable *opaque,
};

export type __struct_SDL_AsyncIOQueue = opaque;
