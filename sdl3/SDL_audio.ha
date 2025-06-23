use types::c;

export def SDL_AUDIO_F32: int = 33056;

export def SDL_AUDIO_F32BE: int = 37152;

export def SDL_AUDIO_F32LE: int = 33056;

export def SDL_AUDIO_S16: int = 32784;

export def SDL_AUDIO_S16BE: int = 36880;

export def SDL_AUDIO_S16LE: int = 32784;

export def SDL_AUDIO_S32: int = 32800;

export def SDL_AUDIO_S32BE: int = 36896;

export def SDL_AUDIO_S32LE: int = 32800;

export def SDL_AUDIO_S8: int = 32776;

export def SDL_AUDIO_U8: int = 8;

export def SDL_AUDIO_UNKNOWN: int = 0;

export type SDL_AudioDeviceID = u32;

export @symbol("SDL_AudioDevicePaused") fn SDL_AudioDevicePaused(
	devid: SDL_AudioDeviceID,
) bool;

export type SDL_AudioFormat = __enum_SDL_AudioFormat;

export type SDL_AudioPostmixCallback = nullable *const fn(
	userdata: nullable *opaque,
	spec: nullable *const SDL_AudioSpec,
	buffer: nullable *f32,
	buflen: int,
) void;

export type SDL_AudioSpec = __struct_SDL_AudioSpec;

export type SDL_AudioStream = __struct_SDL_AudioStream;

export type SDL_AudioStreamCallback = nullable *const fn(
	userdata: nullable *opaque,
	stream: nullable *SDL_AudioStream,
	additional_amount: int,
	total_amount: int,
) void;

export @symbol("SDL_AudioStreamDevicePaused") fn SDL_AudioStreamDevicePaused(
	stream: nullable *SDL_AudioStream,
) bool;

export @symbol("SDL_BindAudioStream") fn SDL_BindAudioStream(
	devid: SDL_AudioDeviceID,
	stream: nullable *SDL_AudioStream,
) bool;

export @symbol("SDL_BindAudioStreams") fn SDL_BindAudioStreams(
	devid: SDL_AudioDeviceID,
	streams: nullable *const nullable *SDL_AudioStream,
	num_streams: int,
) bool;

export @symbol("SDL_ClearAudioStream") fn SDL_ClearAudioStream(
	stream: nullable *SDL_AudioStream,
) bool;

export @symbol("SDL_CloseAudioDevice") fn SDL_CloseAudioDevice(
	devid: SDL_AudioDeviceID,
) void;

export @symbol("SDL_ConvertAudioSamples") fn SDL_ConvertAudioSamples(
	src_spec: nullable *const SDL_AudioSpec,
	src_data: nullable *const u8,
	src_len: int,
	dst_spec: nullable *const SDL_AudioSpec,
	dst_data: nullable *nullable *u8,
	dst_len: nullable *int,
) bool;

export @symbol("SDL_CreateAudioStream") fn SDL_CreateAudioStream(
	src_spec: nullable *const SDL_AudioSpec,
	dst_spec: nullable *const SDL_AudioSpec,
) nullable *SDL_AudioStream;

export @symbol("SDL_DestroyAudioStream") fn SDL_DestroyAudioStream(
	stream: nullable *SDL_AudioStream,
) void;

export @symbol("SDL_FlushAudioStream") fn SDL_FlushAudioStream(
	stream: nullable *SDL_AudioStream,
) bool;

export @symbol("SDL_GetAudioDeviceChannelMap") fn SDL_GetAudioDeviceChannelMap(
	devid: SDL_AudioDeviceID,
	count: nullable *int,
) nullable *int;

export @symbol("SDL_GetAudioDeviceFormat") fn SDL_GetAudioDeviceFormat(
	devid: SDL_AudioDeviceID,
	spec: nullable *SDL_AudioSpec,
	sample_frames: nullable *int,
) bool;

export @symbol("SDL_GetAudioDeviceGain") fn SDL_GetAudioDeviceGain(
	devid: SDL_AudioDeviceID,
) f32;

export @symbol("SDL_GetAudioDeviceName") fn SDL_GetAudioDeviceName(
	devid: SDL_AudioDeviceID,
) nullable *const c::char;

export @symbol("SDL_GetAudioDriver") fn SDL_GetAudioDriver(
	index: int,
) nullable *const c::char;

export @symbol("SDL_GetAudioFormatName") fn SDL_GetAudioFormatName(
	format: SDL_AudioFormat,
) nullable *const c::char;

export @symbol("SDL_GetAudioPlaybackDevices") fn SDL_GetAudioPlaybackDevices(
	count: nullable *int,
) nullable *SDL_AudioDeviceID;

export @symbol("SDL_GetAudioRecordingDevices") fn SDL_GetAudioRecordingDevices(
	count: nullable *int,
) nullable *SDL_AudioDeviceID;

export @symbol("SDL_GetAudioStreamAvailable") fn SDL_GetAudioStreamAvailable(
	stream: nullable *SDL_AudioStream,
) int;

export @symbol("SDL_GetAudioStreamData") fn SDL_GetAudioStreamData(
	stream: nullable *SDL_AudioStream,
	buf: nullable *opaque,
	__len: int,
) int;

export @symbol("SDL_GetAudioStreamDevice") fn SDL_GetAudioStreamDevice(
	stream: nullable *SDL_AudioStream,
) SDL_AudioDeviceID;

export @symbol("SDL_GetAudioStreamFormat") fn SDL_GetAudioStreamFormat(
	stream: nullable *SDL_AudioStream,
	src_spec: nullable *SDL_AudioSpec,
	dst_spec: nullable *SDL_AudioSpec,
) bool;

export @symbol("SDL_GetAudioStreamFrequencyRatio") fn SDL_GetAudioStreamFrequencyRatio(
	stream: nullable *SDL_AudioStream,
) f32;

export @symbol("SDL_GetAudioStreamGain") fn SDL_GetAudioStreamGain(
	stream: nullable *SDL_AudioStream,
) f32;

export @symbol("SDL_GetAudioStreamInputChannelMap") fn SDL_GetAudioStreamInputChannelMap(
	stream: nullable *SDL_AudioStream,
	count: nullable *int,
) nullable *int;

export @symbol("SDL_GetAudioStreamOutputChannelMap") fn SDL_GetAudioStreamOutputChannelMap(
	stream: nullable *SDL_AudioStream,
	count: nullable *int,
) nullable *int;

export @symbol("SDL_GetAudioStreamProperties") fn SDL_GetAudioStreamProperties(
	stream: nullable *SDL_AudioStream,
) SDL_PropertiesID;

export @symbol("SDL_GetAudioStreamQueued") fn SDL_GetAudioStreamQueued(
	stream: nullable *SDL_AudioStream,
) int;

export @symbol("SDL_GetCurrentAudioDriver") fn SDL_GetCurrentAudioDriver(
) nullable *const c::char;

export @symbol("SDL_GetNumAudioDrivers") fn SDL_GetNumAudioDrivers() int;

export @symbol("SDL_GetSilenceValueForFormat") fn SDL_GetSilenceValueForFormat(
	format: SDL_AudioFormat,
) int;

export @symbol("SDL_IsAudioDevicePhysical") fn SDL_IsAudioDevicePhysical(
	devid: SDL_AudioDeviceID,
) bool;

export @symbol("SDL_IsAudioDevicePlayback") fn SDL_IsAudioDevicePlayback(
	devid: SDL_AudioDeviceID,
) bool;

export @symbol("SDL_LoadWAV") fn SDL_LoadWAV(
	path: nullable *const c::char,
	spec: nullable *SDL_AudioSpec,
	audio_buf: nullable *nullable *u8,
	audio_len: nullable *u32,
) bool;

export @symbol("SDL_LoadWAV_IO") fn SDL_LoadWAV_IO(
	src: nullable *SDL_IOStream,
	closeio: bool,
	spec: nullable *SDL_AudioSpec,
	audio_buf: nullable *nullable *u8,
	audio_len: nullable *u32,
) bool;

export @symbol("SDL_LockAudioStream") fn SDL_LockAudioStream(
	stream: nullable *SDL_AudioStream,
) bool;

export @symbol("SDL_MixAudio") fn SDL_MixAudio(
	dst: nullable *u8,
	src: nullable *const u8,
	format: SDL_AudioFormat,
	__len: u32,
	volume: f32,
) bool;

export @symbol("SDL_OpenAudioDevice") fn SDL_OpenAudioDevice(
	devid: SDL_AudioDeviceID,
	spec: nullable *const SDL_AudioSpec,
) SDL_AudioDeviceID;

export @symbol("SDL_OpenAudioDeviceStream") fn SDL_OpenAudioDeviceStream(
	devid: SDL_AudioDeviceID,
	spec: nullable *const SDL_AudioSpec,
	callback: SDL_AudioStreamCallback,
	userdata: nullable *opaque,
) nullable *SDL_AudioStream;

export @symbol("SDL_PauseAudioDevice") fn SDL_PauseAudioDevice(
	devid: SDL_AudioDeviceID,
) bool;

export @symbol("SDL_PauseAudioStreamDevice") fn SDL_PauseAudioStreamDevice(
	stream: nullable *SDL_AudioStream,
) bool;

export @symbol("SDL_PutAudioStreamData") fn SDL_PutAudioStreamData(
	stream: nullable *SDL_AudioStream,
	buf: nullable *const opaque,
	__len: int,
) bool;

export @symbol("SDL_ResumeAudioDevice") fn SDL_ResumeAudioDevice(
	devid: SDL_AudioDeviceID,
) bool;

export @symbol("SDL_ResumeAudioStreamDevice") fn SDL_ResumeAudioStreamDevice(
	stream: nullable *SDL_AudioStream,
) bool;

export @symbol("SDL_SetAudioDeviceGain") fn SDL_SetAudioDeviceGain(
	devid: SDL_AudioDeviceID,
	gain: f32,
) bool;

export @symbol("SDL_SetAudioPostmixCallback") fn SDL_SetAudioPostmixCallback(
	devid: SDL_AudioDeviceID,
	callback: SDL_AudioPostmixCallback,
	userdata: nullable *opaque,
) bool;

export @symbol("SDL_SetAudioStreamFormat") fn SDL_SetAudioStreamFormat(
	stream: nullable *SDL_AudioStream,
	src_spec: nullable *const SDL_AudioSpec,
	dst_spec: nullable *const SDL_AudioSpec,
) bool;

export @symbol("SDL_SetAudioStreamFrequencyRatio") fn SDL_SetAudioStreamFrequencyRatio(
	stream: nullable *SDL_AudioStream,
	ratio: f32,
) bool;

export @symbol("SDL_SetAudioStreamGain") fn SDL_SetAudioStreamGain(
	stream: nullable *SDL_AudioStream,
	gain: f32,
) bool;

export @symbol("SDL_SetAudioStreamGetCallback") fn SDL_SetAudioStreamGetCallback(
	stream: nullable *SDL_AudioStream,
	callback: SDL_AudioStreamCallback,
	userdata: nullable *opaque,
) bool;

export @symbol("SDL_SetAudioStreamInputChannelMap") fn SDL_SetAudioStreamInputChannelMap(
	stream: nullable *SDL_AudioStream,
	chmap: nullable *const int,
	count: int,
) bool;

export @symbol("SDL_SetAudioStreamOutputChannelMap") fn SDL_SetAudioStreamOutputChannelMap(
	stream: nullable *SDL_AudioStream,
	chmap: nullable *const int,
	count: int,
) bool;

export @symbol("SDL_SetAudioStreamPutCallback") fn SDL_SetAudioStreamPutCallback(
	stream: nullable *SDL_AudioStream,
	callback: SDL_AudioStreamCallback,
	userdata: nullable *opaque,
) bool;

export @symbol("SDL_UnbindAudioStream") fn SDL_UnbindAudioStream(
	stream: nullable *SDL_AudioStream,
) void;

export @symbol("SDL_UnbindAudioStreams") fn SDL_UnbindAudioStreams(
	streams: nullable *const nullable *SDL_AudioStream,
	num_streams: int,
) void;

export @symbol("SDL_UnlockAudioStream") fn SDL_UnlockAudioStream(
	stream: nullable *SDL_AudioStream,
) bool;

export type __enum_SDL_AudioFormat = uint;

export type __struct_SDL_AudioSpec = struct {
	format: SDL_AudioFormat,
	channels: int,
	freq: int,
};

export type __struct_SDL_AudioStream = opaque;
