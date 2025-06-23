use types::c;

export @symbol("SDL_AcquireGPUCommandBuffer") fn SDL_AcquireGPUCommandBuffer(
	device: nullable *SDL_GPUDevice,
) nullable *SDL_GPUCommandBuffer;

export @symbol("SDL_AcquireGPUSwapchainTexture") fn SDL_AcquireGPUSwapchainTexture(
	command_buffer: nullable *SDL_GPUCommandBuffer,
	window: nullable *SDL_Window,
	swapchain_texture: nullable *nullable *SDL_GPUTexture,
	swapchain_texture_width: nullable *u32,
	swapchain_texture_height: nullable *u32,
) bool;

export @symbol("SDL_BeginGPUComputePass") fn SDL_BeginGPUComputePass(
	command_buffer: nullable *SDL_GPUCommandBuffer,
	storage_texture_bindings: nullable *const SDL_GPUStorageTextureReadWriteBinding,
	num_storage_texture_bindings: u32,
	storage_buffer_bindings: nullable *const SDL_GPUStorageBufferReadWriteBinding,
	num_storage_buffer_bindings: u32,
) nullable *SDL_GPUComputePass;

export @symbol("SDL_BeginGPUCopyPass") fn SDL_BeginGPUCopyPass(
	command_buffer: nullable *SDL_GPUCommandBuffer,
) nullable *SDL_GPUCopyPass;

export @symbol("SDL_BeginGPURenderPass") fn SDL_BeginGPURenderPass(
	command_buffer: nullable *SDL_GPUCommandBuffer,
	color_target_infos: nullable *const SDL_GPUColorTargetInfo,
	num_color_targets: u32,
	depth_stencil_target_info: nullable *const SDL_GPUDepthStencilTargetInfo,
) nullable *SDL_GPURenderPass;

export @symbol("SDL_BindGPUComputePipeline") fn SDL_BindGPUComputePipeline(
	compute_pass: nullable *SDL_GPUComputePass,
	compute_pipeline: nullable *SDL_GPUComputePipeline,
) void;

export @symbol("SDL_BindGPUComputeSamplers") fn SDL_BindGPUComputeSamplers(
	compute_pass: nullable *SDL_GPUComputePass,
	first_slot: u32,
	texture_sampler_bindings: nullable *const SDL_GPUTextureSamplerBinding,
	num_bindings: u32,
) void;

export @symbol("SDL_BindGPUComputeStorageBuffers") fn SDL_BindGPUComputeStorageBuffers(
	compute_pass: nullable *SDL_GPUComputePass,
	first_slot: u32,
	storage_buffers: nullable *const nullable *SDL_GPUBuffer,
	num_bindings: u32,
) void;

export @symbol("SDL_BindGPUComputeStorageTextures") fn SDL_BindGPUComputeStorageTextures(
	compute_pass: nullable *SDL_GPUComputePass,
	first_slot: u32,
	storage_textures: nullable *const nullable *SDL_GPUTexture,
	num_bindings: u32,
) void;

export @symbol("SDL_BindGPUFragmentSamplers") fn SDL_BindGPUFragmentSamplers(
	render_pass: nullable *SDL_GPURenderPass,
	first_slot: u32,
	texture_sampler_bindings: nullable *const SDL_GPUTextureSamplerBinding,
	num_bindings: u32,
) void;

export @symbol("SDL_BindGPUFragmentStorageBuffers") fn SDL_BindGPUFragmentStorageBuffers(
	render_pass: nullable *SDL_GPURenderPass,
	first_slot: u32,
	storage_buffers: nullable *const nullable *SDL_GPUBuffer,
	num_bindings: u32,
) void;

export @symbol("SDL_BindGPUFragmentStorageTextures") fn SDL_BindGPUFragmentStorageTextures(
	render_pass: nullable *SDL_GPURenderPass,
	first_slot: u32,
	storage_textures: nullable *const nullable *SDL_GPUTexture,
	num_bindings: u32,
) void;

export @symbol("SDL_BindGPUGraphicsPipeline") fn SDL_BindGPUGraphicsPipeline(
	render_pass: nullable *SDL_GPURenderPass,
	graphics_pipeline: nullable *SDL_GPUGraphicsPipeline,
) void;

export @symbol("SDL_BindGPUIndexBuffer") fn SDL_BindGPUIndexBuffer(
	render_pass: nullable *SDL_GPURenderPass,
	binding: nullable *const SDL_GPUBufferBinding,
	index_element_size: SDL_GPUIndexElementSize,
) void;

export @symbol("SDL_BindGPUVertexBuffers") fn SDL_BindGPUVertexBuffers(
	render_pass: nullable *SDL_GPURenderPass,
	first_slot: u32,
	bindings: nullable *const SDL_GPUBufferBinding,
	num_bindings: u32,
) void;

export @symbol("SDL_BindGPUVertexSamplers") fn SDL_BindGPUVertexSamplers(
	render_pass: nullable *SDL_GPURenderPass,
	first_slot: u32,
	texture_sampler_bindings: nullable *const SDL_GPUTextureSamplerBinding,
	num_bindings: u32,
) void;

export @symbol("SDL_BindGPUVertexStorageBuffers") fn SDL_BindGPUVertexStorageBuffers(
	render_pass: nullable *SDL_GPURenderPass,
	first_slot: u32,
	storage_buffers: nullable *const nullable *SDL_GPUBuffer,
	num_bindings: u32,
) void;

export @symbol("SDL_BindGPUVertexStorageTextures") fn SDL_BindGPUVertexStorageTextures(
	render_pass: nullable *SDL_GPURenderPass,
	first_slot: u32,
	storage_textures: nullable *const nullable *SDL_GPUTexture,
	num_bindings: u32,
) void;

export @symbol("SDL_BlitGPUTexture") fn SDL_BlitGPUTexture(
	command_buffer: nullable *SDL_GPUCommandBuffer,
	info: nullable *const SDL_GPUBlitInfo,
) void;

export @symbol("SDL_CalculateGPUTextureFormatSize") fn SDL_CalculateGPUTextureFormatSize(
	format: SDL_GPUTextureFormat,
	width: u32,
	height: u32,
	depth_or_layer_count: u32,
) u32;

export @symbol("SDL_CancelGPUCommandBuffer") fn SDL_CancelGPUCommandBuffer(
	command_buffer: nullable *SDL_GPUCommandBuffer,
) bool;

export @symbol("SDL_ClaimWindowForGPUDevice") fn SDL_ClaimWindowForGPUDevice(
	device: nullable *SDL_GPUDevice,
	window: nullable *SDL_Window,
) bool;

export @symbol("SDL_CopyGPUBufferToBuffer") fn SDL_CopyGPUBufferToBuffer(
	copy_pass: nullable *SDL_GPUCopyPass,
	source: nullable *const SDL_GPUBufferLocation,
	destination: nullable *const SDL_GPUBufferLocation,
	__size: u32,
	cycle: bool,
) void;

export @symbol("SDL_CopyGPUTextureToTexture") fn SDL_CopyGPUTextureToTexture(
	copy_pass: nullable *SDL_GPUCopyPass,
	source: nullable *const SDL_GPUTextureLocation,
	destination: nullable *const SDL_GPUTextureLocation,
	w: u32,
	h: u32,
	d: u32,
	cycle: bool,
) void;

export @symbol("SDL_CreateGPUBuffer") fn SDL_CreateGPUBuffer(
	device: nullable *SDL_GPUDevice,
	createinfo: nullable *const SDL_GPUBufferCreateInfo,
) nullable *SDL_GPUBuffer;

export @symbol("SDL_CreateGPUComputePipeline") fn SDL_CreateGPUComputePipeline(
	device: nullable *SDL_GPUDevice,
	createinfo: nullable *const SDL_GPUComputePipelineCreateInfo,
) nullable *SDL_GPUComputePipeline;

export @symbol("SDL_CreateGPUDevice") fn SDL_CreateGPUDevice(
	format_flags: SDL_GPUShaderFormat,
	debug_mode: bool,
	name: nullable *const c::char,
) nullable *SDL_GPUDevice;

export @symbol("SDL_CreateGPUDeviceWithProperties") fn SDL_CreateGPUDeviceWithProperties(
	props: SDL_PropertiesID,
) nullable *SDL_GPUDevice;

export @symbol("SDL_CreateGPUGraphicsPipeline") fn SDL_CreateGPUGraphicsPipeline(
	device: nullable *SDL_GPUDevice,
	createinfo: nullable *const SDL_GPUGraphicsPipelineCreateInfo,
) nullable *SDL_GPUGraphicsPipeline;

export @symbol("SDL_CreateGPUSampler") fn SDL_CreateGPUSampler(
	device: nullable *SDL_GPUDevice,
	createinfo: nullable *const SDL_GPUSamplerCreateInfo,
) nullable *SDL_GPUSampler;

export @symbol("SDL_CreateGPUShader") fn SDL_CreateGPUShader(
	device: nullable *SDL_GPUDevice,
	createinfo: nullable *const SDL_GPUShaderCreateInfo,
) nullable *SDL_GPUShader;

export @symbol("SDL_CreateGPUTexture") fn SDL_CreateGPUTexture(
	device: nullable *SDL_GPUDevice,
	createinfo: nullable *const SDL_GPUTextureCreateInfo,
) nullable *SDL_GPUTexture;

export @symbol("SDL_CreateGPUTransferBuffer") fn SDL_CreateGPUTransferBuffer(
	device: nullable *SDL_GPUDevice,
	createinfo: nullable *const SDL_GPUTransferBufferCreateInfo,
) nullable *SDL_GPUTransferBuffer;

export @symbol("SDL_DestroyGPUDevice") fn SDL_DestroyGPUDevice(
	device: nullable *SDL_GPUDevice,
) void;

export @symbol("SDL_DispatchGPUCompute") fn SDL_DispatchGPUCompute(
	compute_pass: nullable *SDL_GPUComputePass,
	groupcount_x: u32,
	groupcount_y: u32,
	groupcount_z: u32,
) void;

export @symbol("SDL_DispatchGPUComputeIndirect") fn SDL_DispatchGPUComputeIndirect(
	compute_pass: nullable *SDL_GPUComputePass,
	buffer: nullable *SDL_GPUBuffer,
	__offset: u32,
) void;

export @symbol("SDL_DownloadFromGPUBuffer") fn SDL_DownloadFromGPUBuffer(
	copy_pass: nullable *SDL_GPUCopyPass,
	source: nullable *const SDL_GPUBufferRegion,
	destination: nullable *const SDL_GPUTransferBufferLocation,
) void;

export @symbol("SDL_DownloadFromGPUTexture") fn SDL_DownloadFromGPUTexture(
	copy_pass: nullable *SDL_GPUCopyPass,
	source: nullable *const SDL_GPUTextureRegion,
	destination: nullable *const SDL_GPUTextureTransferInfo,
) void;

export @symbol("SDL_DrawGPUIndexedPrimitives") fn SDL_DrawGPUIndexedPrimitives(
	render_pass: nullable *SDL_GPURenderPass,
	num_indices: u32,
	num_instances: u32,
	first_index: u32,
	vertex_offset: i32,
	first_instance: u32,
) void;

export @symbol("SDL_DrawGPUIndexedPrimitivesIndirect") fn SDL_DrawGPUIndexedPrimitivesIndirect(
	render_pass: nullable *SDL_GPURenderPass,
	buffer: nullable *SDL_GPUBuffer,
	__offset: u32,
	draw_count: u32,
) void;

export @symbol("SDL_DrawGPUPrimitives") fn SDL_DrawGPUPrimitives(
	render_pass: nullable *SDL_GPURenderPass,
	num_vertices: u32,
	num_instances: u32,
	first_vertex: u32,
	first_instance: u32,
) void;

export @symbol("SDL_DrawGPUPrimitivesIndirect") fn SDL_DrawGPUPrimitivesIndirect(
	render_pass: nullable *SDL_GPURenderPass,
	buffer: nullable *SDL_GPUBuffer,
	__offset: u32,
	draw_count: u32,
) void;

export @symbol("SDL_EndGPUComputePass") fn SDL_EndGPUComputePass(
	compute_pass: nullable *SDL_GPUComputePass,
) void;

export @symbol("SDL_EndGPUCopyPass") fn SDL_EndGPUCopyPass(
	copy_pass: nullable *SDL_GPUCopyPass,
) void;

export @symbol("SDL_EndGPURenderPass") fn SDL_EndGPURenderPass(
	render_pass: nullable *SDL_GPURenderPass,
) void;

export type SDL_GPUBlendFactor = __enum_SDL_GPUBlendFactor;

export type SDL_GPUBlendOp = __enum_SDL_GPUBlendOp;

export type SDL_GPUBlitInfo = __struct_SDL_GPUBlitInfo;

export type SDL_GPUBlitRegion = __struct_SDL_GPUBlitRegion;

export type SDL_GPUBuffer = __struct_SDL_GPUBuffer;

export type SDL_GPUBufferBinding = __struct_SDL_GPUBufferBinding;

export type SDL_GPUBufferCreateInfo = __struct_SDL_GPUBufferCreateInfo;

export type SDL_GPUBufferLocation = __struct_SDL_GPUBufferLocation;

export type SDL_GPUBufferRegion = __struct_SDL_GPUBufferRegion;

export type SDL_GPUBufferUsageFlags = u32;

export type SDL_GPUColorComponentFlags = u8;

export type SDL_GPUColorTargetBlendState = __struct_SDL_GPUColorTargetBlendState;

export type SDL_GPUColorTargetDescription = __struct_SDL_GPUColorTargetDescription;

export type SDL_GPUColorTargetInfo = __struct_SDL_GPUColorTargetInfo;

export type SDL_GPUCommandBuffer = __struct_SDL_GPUCommandBuffer;

export type SDL_GPUCompareOp = __enum_SDL_GPUCompareOp;

export type SDL_GPUComputePass = __struct_SDL_GPUComputePass;

export type SDL_GPUComputePipeline = __struct_SDL_GPUComputePipeline;

export type SDL_GPUComputePipelineCreateInfo = __struct_SDL_GPUComputePipelineCreateInfo;

export type SDL_GPUCopyPass = __struct_SDL_GPUCopyPass;

export type SDL_GPUCubeMapFace = __enum_SDL_GPUCubeMapFace;

export type SDL_GPUCullMode = __enum_SDL_GPUCullMode;

export type SDL_GPUDepthStencilState = __struct_SDL_GPUDepthStencilState;

export type SDL_GPUDepthStencilTargetInfo = __struct_SDL_GPUDepthStencilTargetInfo;

export type SDL_GPUDevice = __struct_SDL_GPUDevice;

export type SDL_GPUFence = __struct_SDL_GPUFence;

export type SDL_GPUFillMode = __enum_SDL_GPUFillMode;

export type SDL_GPUFilter = __enum_SDL_GPUFilter;

export type SDL_GPUFrontFace = __enum_SDL_GPUFrontFace;

export type SDL_GPUGraphicsPipeline = __struct_SDL_GPUGraphicsPipeline;

export type SDL_GPUGraphicsPipelineCreateInfo = __struct_SDL_GPUGraphicsPipelineCreateInfo;

export type SDL_GPUGraphicsPipelineTargetInfo = __struct_SDL_GPUGraphicsPipelineTargetInfo;

export type SDL_GPUIndexElementSize = __enum_SDL_GPUIndexElementSize;

export type SDL_GPUIndexedIndirectDrawCommand = __struct_SDL_GPUIndexedIndirectDrawCommand;

export type SDL_GPUIndirectDispatchCommand = __struct_SDL_GPUIndirectDispatchCommand;

export type SDL_GPUIndirectDrawCommand = __struct_SDL_GPUIndirectDrawCommand;

export type SDL_GPULoadOp = __enum_SDL_GPULoadOp;

export type SDL_GPUMultisampleState = __struct_SDL_GPUMultisampleState;

export type SDL_GPUPresentMode = __enum_SDL_GPUPresentMode;

export type SDL_GPUPrimitiveType = __enum_SDL_GPUPrimitiveType;

export type SDL_GPURasterizerState = __struct_SDL_GPURasterizerState;

export type SDL_GPURenderPass = __struct_SDL_GPURenderPass;

export type SDL_GPUSampleCount = __enum_SDL_GPUSampleCount;

export type SDL_GPUSampler = __struct_SDL_GPUSampler;

export type SDL_GPUSamplerAddressMode = __enum_SDL_GPUSamplerAddressMode;

export type SDL_GPUSamplerCreateInfo = __struct_SDL_GPUSamplerCreateInfo;

export type SDL_GPUSamplerMipmapMode = __enum_SDL_GPUSamplerMipmapMode;

export type SDL_GPUShader = __struct_SDL_GPUShader;

export type SDL_GPUShaderCreateInfo = __struct_SDL_GPUShaderCreateInfo;

export type SDL_GPUShaderFormat = u32;

export type SDL_GPUShaderStage = __enum_SDL_GPUShaderStage;

export type SDL_GPUStencilOp = __enum_SDL_GPUStencilOp;

export type SDL_GPUStencilOpState = __struct_SDL_GPUStencilOpState;

export type SDL_GPUStorageBufferReadWriteBinding = __struct_SDL_GPUStorageBufferReadWriteBinding;

export type SDL_GPUStorageTextureReadWriteBinding = __struct_SDL_GPUStorageTextureReadWriteBinding;

export type SDL_GPUStoreOp = __enum_SDL_GPUStoreOp;

export @symbol("SDL_GPUSupportsProperties") fn SDL_GPUSupportsProperties(
	props: SDL_PropertiesID,
) bool;

export @symbol("SDL_GPUSupportsShaderFormats") fn SDL_GPUSupportsShaderFormats(
	format_flags: SDL_GPUShaderFormat,
	name: nullable *const c::char,
) bool;

export type SDL_GPUSwapchainComposition = __enum_SDL_GPUSwapchainComposition;

export type SDL_GPUTexture = __struct_SDL_GPUTexture;

export type SDL_GPUTextureCreateInfo = __struct_SDL_GPUTextureCreateInfo;

export type SDL_GPUTextureFormat = __enum_SDL_GPUTextureFormat;

export @symbol("SDL_GPUTextureFormatTexelBlockSize") fn SDL_GPUTextureFormatTexelBlockSize(
	format: SDL_GPUTextureFormat,
) u32;

export type SDL_GPUTextureLocation = __struct_SDL_GPUTextureLocation;

export type SDL_GPUTextureRegion = __struct_SDL_GPUTextureRegion;

export type SDL_GPUTextureSamplerBinding = __struct_SDL_GPUTextureSamplerBinding;

export @symbol("SDL_GPUTextureSupportsFormat") fn SDL_GPUTextureSupportsFormat(
	device: nullable *SDL_GPUDevice,
	format: SDL_GPUTextureFormat,
	__type: SDL_GPUTextureType,
	usage: SDL_GPUTextureUsageFlags,
) bool;

export @symbol("SDL_GPUTextureSupportsSampleCount") fn SDL_GPUTextureSupportsSampleCount(
	device: nullable *SDL_GPUDevice,
	format: SDL_GPUTextureFormat,
	sample_count: SDL_GPUSampleCount,
) bool;

export type SDL_GPUTextureTransferInfo = __struct_SDL_GPUTextureTransferInfo;

export type SDL_GPUTextureType = __enum_SDL_GPUTextureType;

export type SDL_GPUTextureUsageFlags = u32;

export type SDL_GPUTransferBuffer = __struct_SDL_GPUTransferBuffer;

export type SDL_GPUTransferBufferCreateInfo = __struct_SDL_GPUTransferBufferCreateInfo;

export type SDL_GPUTransferBufferLocation = __struct_SDL_GPUTransferBufferLocation;

export type SDL_GPUTransferBufferUsage = __enum_SDL_GPUTransferBufferUsage;

export type SDL_GPUVertexAttribute = __struct_SDL_GPUVertexAttribute;

export type SDL_GPUVertexBufferDescription = __struct_SDL_GPUVertexBufferDescription;

export type SDL_GPUVertexElementFormat = __enum_SDL_GPUVertexElementFormat;

export type SDL_GPUVertexInputRate = __enum_SDL_GPUVertexInputRate;

export type SDL_GPUVertexInputState = __struct_SDL_GPUVertexInputState;

export type SDL_GPUViewport = __struct_SDL_GPUViewport;

export def SDL_GPU_BLENDFACTOR_CONSTANT_COLOR: int = 11;

export def SDL_GPU_BLENDFACTOR_DST_ALPHA: int = 9;

export def SDL_GPU_BLENDFACTOR_DST_COLOR: int = 5;

export def SDL_GPU_BLENDFACTOR_INVALID: int = 0;

export def SDL_GPU_BLENDFACTOR_ONE: int = 2;

export def SDL_GPU_BLENDFACTOR_ONE_MINUS_CONSTANT_COLOR: int = 12;

export def SDL_GPU_BLENDFACTOR_ONE_MINUS_DST_ALPHA: int = 10;

export def SDL_GPU_BLENDFACTOR_ONE_MINUS_DST_COLOR: int = 6;

export def SDL_GPU_BLENDFACTOR_ONE_MINUS_SRC_ALPHA: int = 8;

export def SDL_GPU_BLENDFACTOR_ONE_MINUS_SRC_COLOR: int = 4;

export def SDL_GPU_BLENDFACTOR_SRC_ALPHA: int = 7;

export def SDL_GPU_BLENDFACTOR_SRC_ALPHA_SATURATE: int = 13;

export def SDL_GPU_BLENDFACTOR_SRC_COLOR: int = 3;

export def SDL_GPU_BLENDFACTOR_ZERO: int = 1;

export def SDL_GPU_BLENDOP_ADD: int = 1;

export def SDL_GPU_BLENDOP_INVALID: int = 0;

export def SDL_GPU_BLENDOP_MAX: int = 5;

export def SDL_GPU_BLENDOP_MIN: int = 4;

export def SDL_GPU_BLENDOP_REVERSE_SUBTRACT: int = 3;

export def SDL_GPU_BLENDOP_SUBTRACT: int = 2;

export def SDL_GPU_COMPAREOP_ALWAYS: int = 8;

export def SDL_GPU_COMPAREOP_EQUAL: int = 3;

export def SDL_GPU_COMPAREOP_GREATER: int = 5;

export def SDL_GPU_COMPAREOP_GREATER_OR_EQUAL: int = 7;

export def SDL_GPU_COMPAREOP_INVALID: int = 0;

export def SDL_GPU_COMPAREOP_LESS: int = 2;

export def SDL_GPU_COMPAREOP_LESS_OR_EQUAL: int = 4;

export def SDL_GPU_COMPAREOP_NEVER: int = 1;

export def SDL_GPU_COMPAREOP_NOT_EQUAL: int = 6;

export def SDL_GPU_CUBEMAPFACE_NEGATIVEX: int = 1;

export def SDL_GPU_CUBEMAPFACE_NEGATIVEY: int = 3;

export def SDL_GPU_CUBEMAPFACE_NEGATIVEZ: int = 5;

export def SDL_GPU_CUBEMAPFACE_POSITIVEX: int = 0;

export def SDL_GPU_CUBEMAPFACE_POSITIVEY: int = 2;

export def SDL_GPU_CUBEMAPFACE_POSITIVEZ: int = 4;

export def SDL_GPU_CULLMODE_BACK: int = 2;

export def SDL_GPU_CULLMODE_FRONT: int = 1;

export def SDL_GPU_CULLMODE_NONE: int = 0;

export def SDL_GPU_FILLMODE_FILL: int = 0;

export def SDL_GPU_FILLMODE_LINE: int = 1;

export def SDL_GPU_FILTER_LINEAR: int = 1;

export def SDL_GPU_FILTER_NEAREST: int = 0;

export def SDL_GPU_FRONTFACE_CLOCKWISE: int = 1;

export def SDL_GPU_FRONTFACE_COUNTER_CLOCKWISE: int = 0;

export def SDL_GPU_INDEXELEMENTSIZE_16BIT: int = 0;

export def SDL_GPU_INDEXELEMENTSIZE_32BIT: int = 1;

export def SDL_GPU_LOADOP_CLEAR: int = 1;

export def SDL_GPU_LOADOP_DONT_CARE: int = 2;

export def SDL_GPU_LOADOP_LOAD: int = 0;

export def SDL_GPU_PRESENTMODE_IMMEDIATE: int = 1;

export def SDL_GPU_PRESENTMODE_MAILBOX: int = 2;

export def SDL_GPU_PRESENTMODE_VSYNC: int = 0;

export def SDL_GPU_PRIMITIVETYPE_LINELIST: int = 2;

export def SDL_GPU_PRIMITIVETYPE_LINESTRIP: int = 3;

export def SDL_GPU_PRIMITIVETYPE_POINTLIST: int = 4;

export def SDL_GPU_PRIMITIVETYPE_TRIANGLELIST: int = 0;

export def SDL_GPU_PRIMITIVETYPE_TRIANGLESTRIP: int = 1;

export def SDL_GPU_SAMPLECOUNT_1: int = 0;

export def SDL_GPU_SAMPLECOUNT_2: int = 1;

export def SDL_GPU_SAMPLECOUNT_4: int = 2;

export def SDL_GPU_SAMPLECOUNT_8: int = 3;

export def SDL_GPU_SAMPLERADDRESSMODE_CLAMP_TO_EDGE: int = 2;

export def SDL_GPU_SAMPLERADDRESSMODE_MIRRORED_REPEAT: int = 1;

export def SDL_GPU_SAMPLERADDRESSMODE_REPEAT: int = 0;

export def SDL_GPU_SAMPLERMIPMAPMODE_LINEAR: int = 1;

export def SDL_GPU_SAMPLERMIPMAPMODE_NEAREST: int = 0;

export def SDL_GPU_SHADERSTAGE_FRAGMENT: int = 1;

export def SDL_GPU_SHADERSTAGE_VERTEX: int = 0;

export def SDL_GPU_STENCILOP_DECREMENT_AND_CLAMP: int = 5;

export def SDL_GPU_STENCILOP_DECREMENT_AND_WRAP: int = 8;

export def SDL_GPU_STENCILOP_INCREMENT_AND_CLAMP: int = 4;

export def SDL_GPU_STENCILOP_INCREMENT_AND_WRAP: int = 7;

export def SDL_GPU_STENCILOP_INVALID: int = 0;

export def SDL_GPU_STENCILOP_INVERT: int = 6;

export def SDL_GPU_STENCILOP_KEEP: int = 1;

export def SDL_GPU_STENCILOP_REPLACE: int = 3;

export def SDL_GPU_STENCILOP_ZERO: int = 2;

export def SDL_GPU_STOREOP_DONT_CARE: int = 1;

export def SDL_GPU_STOREOP_RESOLVE: int = 2;

export def SDL_GPU_STOREOP_RESOLVE_AND_STORE: int = 3;

export def SDL_GPU_STOREOP_STORE: int = 0;

export def SDL_GPU_SWAPCHAINCOMPOSITION_HDR10_ST2084: int = 3;

export def SDL_GPU_SWAPCHAINCOMPOSITION_HDR_EXTENDED_LINEAR: int = 2;

export def SDL_GPU_SWAPCHAINCOMPOSITION_SDR: int = 0;

export def SDL_GPU_SWAPCHAINCOMPOSITION_SDR_LINEAR: int = 1;

export def SDL_GPU_TEXTUREFORMAT_A8_UNORM: int = 1;

export def SDL_GPU_TEXTUREFORMAT_ASTC_10x10_FLOAT: int = 102;

export def SDL_GPU_TEXTUREFORMAT_ASTC_10x10_UNORM: int = 74;

export def SDL_GPU_TEXTUREFORMAT_ASTC_10x10_UNORM_SRGB: int = 88;

export def SDL_GPU_TEXTUREFORMAT_ASTC_10x5_FLOAT: int = 99;

export def SDL_GPU_TEXTUREFORMAT_ASTC_10x5_UNORM: int = 71;

export def SDL_GPU_TEXTUREFORMAT_ASTC_10x5_UNORM_SRGB: int = 85;

export def SDL_GPU_TEXTUREFORMAT_ASTC_10x6_FLOAT: int = 100;

export def SDL_GPU_TEXTUREFORMAT_ASTC_10x6_UNORM: int = 72;

export def SDL_GPU_TEXTUREFORMAT_ASTC_10x6_UNORM_SRGB: int = 86;

export def SDL_GPU_TEXTUREFORMAT_ASTC_10x8_FLOAT: int = 101;

export def SDL_GPU_TEXTUREFORMAT_ASTC_10x8_UNORM: int = 73;

export def SDL_GPU_TEXTUREFORMAT_ASTC_10x8_UNORM_SRGB: int = 87;

export def SDL_GPU_TEXTUREFORMAT_ASTC_12x10_FLOAT: int = 103;

export def SDL_GPU_TEXTUREFORMAT_ASTC_12x10_UNORM: int = 75;

export def SDL_GPU_TEXTUREFORMAT_ASTC_12x10_UNORM_SRGB: int = 89;

export def SDL_GPU_TEXTUREFORMAT_ASTC_12x12_FLOAT: int = 104;

export def SDL_GPU_TEXTUREFORMAT_ASTC_12x12_UNORM: int = 76;

export def SDL_GPU_TEXTUREFORMAT_ASTC_12x12_UNORM_SRGB: int = 90;

export def SDL_GPU_TEXTUREFORMAT_ASTC_4x4_FLOAT: int = 91;

export def SDL_GPU_TEXTUREFORMAT_ASTC_4x4_UNORM: int = 63;

export def SDL_GPU_TEXTUREFORMAT_ASTC_4x4_UNORM_SRGB: int = 77;

export def SDL_GPU_TEXTUREFORMAT_ASTC_5x4_FLOAT: int = 92;

export def SDL_GPU_TEXTUREFORMAT_ASTC_5x4_UNORM: int = 64;

export def SDL_GPU_TEXTUREFORMAT_ASTC_5x4_UNORM_SRGB: int = 78;

export def SDL_GPU_TEXTUREFORMAT_ASTC_5x5_FLOAT: int = 93;

export def SDL_GPU_TEXTUREFORMAT_ASTC_5x5_UNORM: int = 65;

export def SDL_GPU_TEXTUREFORMAT_ASTC_5x5_UNORM_SRGB: int = 79;

export def SDL_GPU_TEXTUREFORMAT_ASTC_6x5_FLOAT: int = 94;

export def SDL_GPU_TEXTUREFORMAT_ASTC_6x5_UNORM: int = 66;

export def SDL_GPU_TEXTUREFORMAT_ASTC_6x5_UNORM_SRGB: int = 80;

export def SDL_GPU_TEXTUREFORMAT_ASTC_6x6_FLOAT: int = 95;

export def SDL_GPU_TEXTUREFORMAT_ASTC_6x6_UNORM: int = 67;

export def SDL_GPU_TEXTUREFORMAT_ASTC_6x6_UNORM_SRGB: int = 81;

export def SDL_GPU_TEXTUREFORMAT_ASTC_8x5_FLOAT: int = 96;

export def SDL_GPU_TEXTUREFORMAT_ASTC_8x5_UNORM: int = 68;

export def SDL_GPU_TEXTUREFORMAT_ASTC_8x5_UNORM_SRGB: int = 82;

export def SDL_GPU_TEXTUREFORMAT_ASTC_8x6_FLOAT: int = 97;

export def SDL_GPU_TEXTUREFORMAT_ASTC_8x6_UNORM: int = 69;

export def SDL_GPU_TEXTUREFORMAT_ASTC_8x6_UNORM_SRGB: int = 83;

export def SDL_GPU_TEXTUREFORMAT_ASTC_8x8_FLOAT: int = 98;

export def SDL_GPU_TEXTUREFORMAT_ASTC_8x8_UNORM: int = 70;

export def SDL_GPU_TEXTUREFORMAT_ASTC_8x8_UNORM_SRGB: int = 84;

export def SDL_GPU_TEXTUREFORMAT_B4G4R4A4_UNORM: int = 11;

export def SDL_GPU_TEXTUREFORMAT_B5G5R5A1_UNORM: int = 10;

export def SDL_GPU_TEXTUREFORMAT_B5G6R5_UNORM: int = 9;

export def SDL_GPU_TEXTUREFORMAT_B8G8R8A8_UNORM: int = 12;

export def SDL_GPU_TEXTUREFORMAT_B8G8R8A8_UNORM_SRGB: int = 53;

export def SDL_GPU_TEXTUREFORMAT_BC1_RGBA_UNORM: int = 13;

export def SDL_GPU_TEXTUREFORMAT_BC1_RGBA_UNORM_SRGB: int = 54;

export def SDL_GPU_TEXTUREFORMAT_BC2_RGBA_UNORM: int = 14;

export def SDL_GPU_TEXTUREFORMAT_BC2_RGBA_UNORM_SRGB: int = 55;

export def SDL_GPU_TEXTUREFORMAT_BC3_RGBA_UNORM: int = 15;

export def SDL_GPU_TEXTUREFORMAT_BC3_RGBA_UNORM_SRGB: int = 56;

export def SDL_GPU_TEXTUREFORMAT_BC4_R_UNORM: int = 16;

export def SDL_GPU_TEXTUREFORMAT_BC5_RG_UNORM: int = 17;

export def SDL_GPU_TEXTUREFORMAT_BC6H_RGB_FLOAT: int = 19;

export def SDL_GPU_TEXTUREFORMAT_BC6H_RGB_UFLOAT: int = 20;

export def SDL_GPU_TEXTUREFORMAT_BC7_RGBA_UNORM: int = 18;

export def SDL_GPU_TEXTUREFORMAT_BC7_RGBA_UNORM_SRGB: int = 57;

export def SDL_GPU_TEXTUREFORMAT_D16_UNORM: int = 58;

export def SDL_GPU_TEXTUREFORMAT_D24_UNORM: int = 59;

export def SDL_GPU_TEXTUREFORMAT_D24_UNORM_S8_UINT: int = 61;

export def SDL_GPU_TEXTUREFORMAT_D32_FLOAT: int = 60;

export def SDL_GPU_TEXTUREFORMAT_D32_FLOAT_S8_UINT: int = 62;

export def SDL_GPU_TEXTUREFORMAT_INVALID: int = 0;

export def SDL_GPU_TEXTUREFORMAT_R10G10B10A2_UNORM: int = 8;

export def SDL_GPU_TEXTUREFORMAT_R11G11B10_UFLOAT: int = 33;

export def SDL_GPU_TEXTUREFORMAT_R16G16B16A16_FLOAT: int = 29;

export def SDL_GPU_TEXTUREFORMAT_R16G16B16A16_INT: int = 48;

export def SDL_GPU_TEXTUREFORMAT_R16G16B16A16_SNORM: int = 26;

export def SDL_GPU_TEXTUREFORMAT_R16G16B16A16_UINT: int = 39;

export def SDL_GPU_TEXTUREFORMAT_R16G16B16A16_UNORM: int = 7;

export def SDL_GPU_TEXTUREFORMAT_R16G16_FLOAT: int = 28;

export def SDL_GPU_TEXTUREFORMAT_R16G16_INT: int = 47;

export def SDL_GPU_TEXTUREFORMAT_R16G16_SNORM: int = 25;

export def SDL_GPU_TEXTUREFORMAT_R16G16_UINT: int = 38;

export def SDL_GPU_TEXTUREFORMAT_R16G16_UNORM: int = 6;

export def SDL_GPU_TEXTUREFORMAT_R16_FLOAT: int = 27;

export def SDL_GPU_TEXTUREFORMAT_R16_INT: int = 46;

export def SDL_GPU_TEXTUREFORMAT_R16_SNORM: int = 24;

export def SDL_GPU_TEXTUREFORMAT_R16_UINT: int = 37;

export def SDL_GPU_TEXTUREFORMAT_R16_UNORM: int = 5;

export def SDL_GPU_TEXTUREFORMAT_R32G32B32A32_FLOAT: int = 32;

export def SDL_GPU_TEXTUREFORMAT_R32G32B32A32_INT: int = 51;

export def SDL_GPU_TEXTUREFORMAT_R32G32B32A32_UINT: int = 42;

export def SDL_GPU_TEXTUREFORMAT_R32G32_FLOAT: int = 31;

export def SDL_GPU_TEXTUREFORMAT_R32G32_INT: int = 50;

export def SDL_GPU_TEXTUREFORMAT_R32G32_UINT: int = 41;

export def SDL_GPU_TEXTUREFORMAT_R32_FLOAT: int = 30;

export def SDL_GPU_TEXTUREFORMAT_R32_INT: int = 49;

export def SDL_GPU_TEXTUREFORMAT_R32_UINT: int = 40;

export def SDL_GPU_TEXTUREFORMAT_R8G8B8A8_INT: int = 45;

export def SDL_GPU_TEXTUREFORMAT_R8G8B8A8_SNORM: int = 23;

export def SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UINT: int = 36;

export def SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM: int = 4;

export def SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM_SRGB: int = 52;

export def SDL_GPU_TEXTUREFORMAT_R8G8_INT: int = 44;

export def SDL_GPU_TEXTUREFORMAT_R8G8_SNORM: int = 22;

export def SDL_GPU_TEXTUREFORMAT_R8G8_UINT: int = 35;

export def SDL_GPU_TEXTUREFORMAT_R8G8_UNORM: int = 3;

export def SDL_GPU_TEXTUREFORMAT_R8_INT: int = 43;

export def SDL_GPU_TEXTUREFORMAT_R8_SNORM: int = 21;

export def SDL_GPU_TEXTUREFORMAT_R8_UINT: int = 34;

export def SDL_GPU_TEXTUREFORMAT_R8_UNORM: int = 2;

export def SDL_GPU_TEXTURETYPE_2D: int = 0;

export def SDL_GPU_TEXTURETYPE_2D_ARRAY: int = 1;

export def SDL_GPU_TEXTURETYPE_3D: int = 2;

export def SDL_GPU_TEXTURETYPE_CUBE: int = 3;

export def SDL_GPU_TEXTURETYPE_CUBE_ARRAY: int = 4;

export def SDL_GPU_TRANSFERBUFFERUSAGE_DOWNLOAD: int = 1;

export def SDL_GPU_TRANSFERBUFFERUSAGE_UPLOAD: int = 0;

export def SDL_GPU_VERTEXELEMENTFORMAT_BYTE2: int = 13;

export def SDL_GPU_VERTEXELEMENTFORMAT_BYTE2_NORM: int = 17;

export def SDL_GPU_VERTEXELEMENTFORMAT_BYTE4: int = 14;

export def SDL_GPU_VERTEXELEMENTFORMAT_BYTE4_NORM: int = 18;

export def SDL_GPU_VERTEXELEMENTFORMAT_FLOAT: int = 9;

export def SDL_GPU_VERTEXELEMENTFORMAT_FLOAT2: int = 10;

export def SDL_GPU_VERTEXELEMENTFORMAT_FLOAT3: int = 11;

export def SDL_GPU_VERTEXELEMENTFORMAT_FLOAT4: int = 12;

export def SDL_GPU_VERTEXELEMENTFORMAT_HALF2: int = 29;

export def SDL_GPU_VERTEXELEMENTFORMAT_HALF4: int = 30;

export def SDL_GPU_VERTEXELEMENTFORMAT_INT: int = 1;

export def SDL_GPU_VERTEXELEMENTFORMAT_INT2: int = 2;

export def SDL_GPU_VERTEXELEMENTFORMAT_INT3: int = 3;

export def SDL_GPU_VERTEXELEMENTFORMAT_INT4: int = 4;

export def SDL_GPU_VERTEXELEMENTFORMAT_INVALID: int = 0;

export def SDL_GPU_VERTEXELEMENTFORMAT_SHORT2: int = 21;

export def SDL_GPU_VERTEXELEMENTFORMAT_SHORT2_NORM: int = 25;

export def SDL_GPU_VERTEXELEMENTFORMAT_SHORT4: int = 22;

export def SDL_GPU_VERTEXELEMENTFORMAT_SHORT4_NORM: int = 26;

export def SDL_GPU_VERTEXELEMENTFORMAT_UBYTE2: int = 15;

export def SDL_GPU_VERTEXELEMENTFORMAT_UBYTE2_NORM: int = 19;

export def SDL_GPU_VERTEXELEMENTFORMAT_UBYTE4: int = 16;

export def SDL_GPU_VERTEXELEMENTFORMAT_UBYTE4_NORM: int = 20;

export def SDL_GPU_VERTEXELEMENTFORMAT_UINT: int = 5;

export def SDL_GPU_VERTEXELEMENTFORMAT_UINT2: int = 6;

export def SDL_GPU_VERTEXELEMENTFORMAT_UINT3: int = 7;

export def SDL_GPU_VERTEXELEMENTFORMAT_UINT4: int = 8;

export def SDL_GPU_VERTEXELEMENTFORMAT_USHORT2: int = 23;

export def SDL_GPU_VERTEXELEMENTFORMAT_USHORT2_NORM: int = 27;

export def SDL_GPU_VERTEXELEMENTFORMAT_USHORT4: int = 24;

export def SDL_GPU_VERTEXELEMENTFORMAT_USHORT4_NORM: int = 28;

export def SDL_GPU_VERTEXINPUTRATE_INSTANCE: int = 1;

export def SDL_GPU_VERTEXINPUTRATE_VERTEX: int = 0;

export @symbol("SDL_GenerateMipmapsForGPUTexture") fn SDL_GenerateMipmapsForGPUTexture(
	command_buffer: nullable *SDL_GPUCommandBuffer,
	texture: nullable *SDL_GPUTexture,
) void;

export @symbol("SDL_GetGPUDeviceDriver") fn SDL_GetGPUDeviceDriver(
	device: nullable *SDL_GPUDevice,
) nullable *const c::char;

export @symbol("SDL_GetGPUDriver") fn SDL_GetGPUDriver(
	index: int,
) nullable *const c::char;

export @symbol("SDL_GetGPUShaderFormats") fn SDL_GetGPUShaderFormats(
	device: nullable *SDL_GPUDevice,
) SDL_GPUShaderFormat;

export @symbol("SDL_GetGPUSwapchainTextureFormat") fn SDL_GetGPUSwapchainTextureFormat(
	device: nullable *SDL_GPUDevice,
	window: nullable *SDL_Window,
) SDL_GPUTextureFormat;

export @symbol("SDL_GetNumGPUDrivers") fn SDL_GetNumGPUDrivers() int;

export @symbol("SDL_InsertGPUDebugLabel") fn SDL_InsertGPUDebugLabel(
	command_buffer: nullable *SDL_GPUCommandBuffer,
	text: nullable *const c::char,
) void;

export @symbol("SDL_MapGPUTransferBuffer") fn SDL_MapGPUTransferBuffer(
	device: nullable *SDL_GPUDevice,
	transfer_buffer: nullable *SDL_GPUTransferBuffer,
	cycle: bool,
) nullable *opaque;

export @symbol("SDL_PopGPUDebugGroup") fn SDL_PopGPUDebugGroup(
	command_buffer: nullable *SDL_GPUCommandBuffer,
) void;

export @symbol("SDL_PushGPUComputeUniformData") fn SDL_PushGPUComputeUniformData(
	command_buffer: nullable *SDL_GPUCommandBuffer,
	slot_index: u32,
	data: nullable *const opaque,
	length: u32,
) void;

export @symbol("SDL_PushGPUDebugGroup") fn SDL_PushGPUDebugGroup(
	command_buffer: nullable *SDL_GPUCommandBuffer,
	name: nullable *const c::char,
) void;

export @symbol("SDL_PushGPUFragmentUniformData") fn SDL_PushGPUFragmentUniformData(
	command_buffer: nullable *SDL_GPUCommandBuffer,
	slot_index: u32,
	data: nullable *const opaque,
	length: u32,
) void;

export @symbol("SDL_PushGPUVertexUniformData") fn SDL_PushGPUVertexUniformData(
	command_buffer: nullable *SDL_GPUCommandBuffer,
	slot_index: u32,
	data: nullable *const opaque,
	length: u32,
) void;

export @symbol("SDL_QueryGPUFence") fn SDL_QueryGPUFence(
	device: nullable *SDL_GPUDevice,
	fence: nullable *SDL_GPUFence,
) bool;

export @symbol("SDL_ReleaseGPUBuffer") fn SDL_ReleaseGPUBuffer(
	device: nullable *SDL_GPUDevice,
	buffer: nullable *SDL_GPUBuffer,
) void;

export @symbol("SDL_ReleaseGPUComputePipeline") fn SDL_ReleaseGPUComputePipeline(
	device: nullable *SDL_GPUDevice,
	compute_pipeline: nullable *SDL_GPUComputePipeline,
) void;

export @symbol("SDL_ReleaseGPUFence") fn SDL_ReleaseGPUFence(
	device: nullable *SDL_GPUDevice,
	fence: nullable *SDL_GPUFence,
) void;

export @symbol("SDL_ReleaseGPUGraphicsPipeline") fn SDL_ReleaseGPUGraphicsPipeline(
	device: nullable *SDL_GPUDevice,
	graphics_pipeline: nullable *SDL_GPUGraphicsPipeline,
) void;

export @symbol("SDL_ReleaseGPUSampler") fn SDL_ReleaseGPUSampler(
	device: nullable *SDL_GPUDevice,
	sampler: nullable *SDL_GPUSampler,
) void;

export @symbol("SDL_ReleaseGPUShader") fn SDL_ReleaseGPUShader(
	device: nullable *SDL_GPUDevice,
	shader: nullable *SDL_GPUShader,
) void;

export @symbol("SDL_ReleaseGPUTexture") fn SDL_ReleaseGPUTexture(
	device: nullable *SDL_GPUDevice,
	texture: nullable *SDL_GPUTexture,
) void;

export @symbol("SDL_ReleaseGPUTransferBuffer") fn SDL_ReleaseGPUTransferBuffer(
	device: nullable *SDL_GPUDevice,
	transfer_buffer: nullable *SDL_GPUTransferBuffer,
) void;

export @symbol("SDL_ReleaseWindowFromGPUDevice") fn SDL_ReleaseWindowFromGPUDevice(
	device: nullable *SDL_GPUDevice,
	window: nullable *SDL_Window,
) void;

export @symbol("SDL_SetGPUAllowedFramesInFlight") fn SDL_SetGPUAllowedFramesInFlight(
	device: nullable *SDL_GPUDevice,
	allowed_frames_in_flight: u32,
) bool;

export @symbol("SDL_SetGPUBlendConstants") fn SDL_SetGPUBlendConstants(
	render_pass: nullable *SDL_GPURenderPass,
	blend_constants: SDL_FColor,
) void;

export @symbol("SDL_SetGPUBufferName") fn SDL_SetGPUBufferName(
	device: nullable *SDL_GPUDevice,
	buffer: nullable *SDL_GPUBuffer,
	text: nullable *const c::char,
) void;

export @symbol("SDL_SetGPUScissor") fn SDL_SetGPUScissor(
	render_pass: nullable *SDL_GPURenderPass,
	scissor: nullable *const SDL_Rect,
) void;

export @symbol("SDL_SetGPUStencilReference") fn SDL_SetGPUStencilReference(
	render_pass: nullable *SDL_GPURenderPass,
	reference: u8,
) void;

export @symbol("SDL_SetGPUSwapchainParameters") fn SDL_SetGPUSwapchainParameters(
	device: nullable *SDL_GPUDevice,
	window: nullable *SDL_Window,
	swapchain_composition: SDL_GPUSwapchainComposition,
	present_mode: SDL_GPUPresentMode,
) bool;

export @symbol("SDL_SetGPUTextureName") fn SDL_SetGPUTextureName(
	device: nullable *SDL_GPUDevice,
	texture: nullable *SDL_GPUTexture,
	text: nullable *const c::char,
) void;

export @symbol("SDL_SetGPUViewport") fn SDL_SetGPUViewport(
	render_pass: nullable *SDL_GPURenderPass,
	viewport: nullable *const SDL_GPUViewport,
) void;

export @symbol("SDL_SubmitGPUCommandBuffer") fn SDL_SubmitGPUCommandBuffer(
	command_buffer: nullable *SDL_GPUCommandBuffer,
) bool;

export @symbol("SDL_SubmitGPUCommandBufferAndAcquireFence") fn SDL_SubmitGPUCommandBufferAndAcquireFence(
	command_buffer: nullable *SDL_GPUCommandBuffer,
) nullable *SDL_GPUFence;

export @symbol("SDL_UnmapGPUTransferBuffer") fn SDL_UnmapGPUTransferBuffer(
	device: nullable *SDL_GPUDevice,
	transfer_buffer: nullable *SDL_GPUTransferBuffer,
) void;

export @symbol("SDL_UploadToGPUBuffer") fn SDL_UploadToGPUBuffer(
	copy_pass: nullable *SDL_GPUCopyPass,
	source: nullable *const SDL_GPUTransferBufferLocation,
	destination: nullable *const SDL_GPUBufferRegion,
	cycle: bool,
) void;

export @symbol("SDL_UploadToGPUTexture") fn SDL_UploadToGPUTexture(
	copy_pass: nullable *SDL_GPUCopyPass,
	source: nullable *const SDL_GPUTextureTransferInfo,
	destination: nullable *const SDL_GPUTextureRegion,
	cycle: bool,
) void;

export @symbol("SDL_WaitAndAcquireGPUSwapchainTexture") fn SDL_WaitAndAcquireGPUSwapchainTexture(
	command_buffer: nullable *SDL_GPUCommandBuffer,
	window: nullable *SDL_Window,
	swapchain_texture: nullable *nullable *SDL_GPUTexture,
	swapchain_texture_width: nullable *u32,
	swapchain_texture_height: nullable *u32,
) bool;

export @symbol("SDL_WaitForGPUFences") fn SDL_WaitForGPUFences(
	device: nullable *SDL_GPUDevice,
	wait_all: bool,
	fences: nullable *const nullable *SDL_GPUFence,
	num_fences: u32,
) bool;

export @symbol("SDL_WaitForGPUIdle") fn SDL_WaitForGPUIdle(
	device: nullable *SDL_GPUDevice,
) bool;

export @symbol("SDL_WaitForGPUSwapchain") fn SDL_WaitForGPUSwapchain(
	device: nullable *SDL_GPUDevice,
	window: nullable *SDL_Window,
) bool;

export @symbol("SDL_WindowSupportsGPUPresentMode") fn SDL_WindowSupportsGPUPresentMode(
	device: nullable *SDL_GPUDevice,
	window: nullable *SDL_Window,
	present_mode: SDL_GPUPresentMode,
) bool;

export @symbol("SDL_WindowSupportsGPUSwapchainComposition") fn SDL_WindowSupportsGPUSwapchainComposition(
	device: nullable *SDL_GPUDevice,
	window: nullable *SDL_Window,
	swapchain_composition: SDL_GPUSwapchainComposition,
) bool;

export type __enum_SDL_GPUBlendFactor = uint;

export type __enum_SDL_GPUBlendOp = uint;

export type __enum_SDL_GPUCompareOp = uint;

export type __enum_SDL_GPUCubeMapFace = uint;

export type __enum_SDL_GPUCullMode = uint;

export type __enum_SDL_GPUFillMode = uint;

export type __enum_SDL_GPUFilter = uint;

export type __enum_SDL_GPUFrontFace = uint;

export type __enum_SDL_GPUIndexElementSize = uint;

export type __enum_SDL_GPULoadOp = uint;

export type __enum_SDL_GPUPresentMode = uint;

export type __enum_SDL_GPUPrimitiveType = uint;

export type __enum_SDL_GPUSampleCount = uint;

export type __enum_SDL_GPUSamplerAddressMode = uint;

export type __enum_SDL_GPUSamplerMipmapMode = uint;

export type __enum_SDL_GPUShaderStage = uint;

export type __enum_SDL_GPUStencilOp = uint;

export type __enum_SDL_GPUStoreOp = uint;

export type __enum_SDL_GPUSwapchainComposition = uint;

export type __enum_SDL_GPUTextureFormat = uint;

export type __enum_SDL_GPUTextureType = uint;

export type __enum_SDL_GPUTransferBufferUsage = uint;

export type __enum_SDL_GPUVertexElementFormat = uint;

export type __enum_SDL_GPUVertexInputRate = uint;

export type __struct_SDL_GPUBlitInfo = struct {
	source: SDL_GPUBlitRegion,
	destination: SDL_GPUBlitRegion,
	load_op: SDL_GPULoadOp,
	clear_color: SDL_FColor,
	flip_mode: SDL_FlipMode,
	filter: SDL_GPUFilter,
	cycle: bool,
	padding1: u8,
	padding2: u8,
	padding3: u8,
};

export type __struct_SDL_GPUBlitRegion = struct {
	texture: nullable *SDL_GPUTexture,
	mip_level: u32,
	layer_or_depth_plane: u32,
	x: u32,
	y: u32,
	w: u32,
	h: u32,
};

export type __struct_SDL_GPUBuffer = opaque;

export type __struct_SDL_GPUBufferBinding = struct {
	buffer: nullable *SDL_GPUBuffer,
	__offset: u32,
};

export type __struct_SDL_GPUBufferCreateInfo = struct {
	usage: SDL_GPUBufferUsageFlags,
	__size: u32,
	props: SDL_PropertiesID,
};

export type __struct_SDL_GPUBufferLocation = struct {
	buffer: nullable *SDL_GPUBuffer,
	__offset: u32,
};

export type __struct_SDL_GPUBufferRegion = struct {
	buffer: nullable *SDL_GPUBuffer,
	__offset: u32,
	__size: u32,
};

export type __struct_SDL_GPUColorTargetBlendState = struct {
	src_color_blendfactor: SDL_GPUBlendFactor,
	dst_color_blendfactor: SDL_GPUBlendFactor,
	color_blend_op: SDL_GPUBlendOp,
	src_alpha_blendfactor: SDL_GPUBlendFactor,
	dst_alpha_blendfactor: SDL_GPUBlendFactor,
	alpha_blend_op: SDL_GPUBlendOp,
	color_write_mask: SDL_GPUColorComponentFlags,
	enable_blend: bool,
	enable_color_write_mask: bool,
	padding1: u8,
	padding2: u8,
};

export type __struct_SDL_GPUColorTargetDescription = struct {
	format: SDL_GPUTextureFormat,
	blend_state: SDL_GPUColorTargetBlendState,
};

export type __struct_SDL_GPUColorTargetInfo = struct {
	texture: nullable *SDL_GPUTexture,
	mip_level: u32,
	layer_or_depth_plane: u32,
	clear_color: SDL_FColor,
	load_op: SDL_GPULoadOp,
	store_op: SDL_GPUStoreOp,
	resolve_texture: nullable *SDL_GPUTexture,
	resolve_mip_level: u32,
	resolve_layer: u32,
	cycle: bool,
	cycle_resolve_texture: bool,
	padding1: u8,
	padding2: u8,
};

export type __struct_SDL_GPUCommandBuffer = opaque;

export type __struct_SDL_GPUComputePass = opaque;

export type __struct_SDL_GPUComputePipeline = opaque;

export type __struct_SDL_GPUComputePipelineCreateInfo = struct {
	code_size: size,
	code: nullable *const u8,
	entrypoint: nullable *const c::char,
	format: SDL_GPUShaderFormat,
	num_samplers: u32,
	num_readonly_storage_textures: u32,
	num_readonly_storage_buffers: u32,
	num_readwrite_storage_textures: u32,
	num_readwrite_storage_buffers: u32,
	num_uniform_buffers: u32,
	threadcount_x: u32,
	threadcount_y: u32,
	threadcount_z: u32,
	props: SDL_PropertiesID,
};

export type __struct_SDL_GPUCopyPass = opaque;

export type __struct_SDL_GPUDepthStencilState = struct {
	compare_op: SDL_GPUCompareOp,
	back_stencil_state: SDL_GPUStencilOpState,
	front_stencil_state: SDL_GPUStencilOpState,
	compare_mask: u8,
	write_mask: u8,
	enable_depth_test: bool,
	enable_depth_write: bool,
	enable_stencil_test: bool,
	padding1: u8,
	padding2: u8,
	padding3: u8,
};

export type __struct_SDL_GPUDepthStencilTargetInfo = struct {
	texture: nullable *SDL_GPUTexture,
	clear_depth: f32,
	load_op: SDL_GPULoadOp,
	store_op: SDL_GPUStoreOp,
	stencil_load_op: SDL_GPULoadOp,
	stencil_store_op: SDL_GPUStoreOp,
	cycle: bool,
	clear_stencil: u8,
	padding1: u8,
	padding2: u8,
};

export type __struct_SDL_GPUDevice = opaque;

export type __struct_SDL_GPUFence = opaque;

export type __struct_SDL_GPUGraphicsPipeline = opaque;

export type __struct_SDL_GPUGraphicsPipelineCreateInfo = struct {
	vertex_shader: nullable *SDL_GPUShader,
	fragment_shader: nullable *SDL_GPUShader,
	vertex_input_state: SDL_GPUVertexInputState,
	primitive_type: SDL_GPUPrimitiveType,
	rasterizer_state: SDL_GPURasterizerState,
	multisample_state: SDL_GPUMultisampleState,
	depth_stencil_state: SDL_GPUDepthStencilState,
	target_info: SDL_GPUGraphicsPipelineTargetInfo,
	props: SDL_PropertiesID,
};

export type __struct_SDL_GPUGraphicsPipelineTargetInfo = struct {
	color_target_descriptions: nullable *const SDL_GPUColorTargetDescription,
	num_color_targets: u32,
	depth_stencil_format: SDL_GPUTextureFormat,
	has_depth_stencil_target: bool,
	padding1: u8,
	padding2: u8,
	padding3: u8,
};

export type __struct_SDL_GPUIndexedIndirectDrawCommand = struct {
	num_indices: u32,
	num_instances: u32,
	first_index: u32,
	vertex_offset: i32,
	first_instance: u32,
};

export type __struct_SDL_GPUIndirectDispatchCommand = struct {
	groupcount_x: u32,
	groupcount_y: u32,
	groupcount_z: u32,
};

export type __struct_SDL_GPUIndirectDrawCommand = struct {
	num_vertices: u32,
	num_instances: u32,
	first_vertex: u32,
	first_instance: u32,
};

export type __struct_SDL_GPUMultisampleState = struct {
	sample_count: SDL_GPUSampleCount,
	sample_mask: u32,
	enable_mask: bool,
	padding1: u8,
	padding2: u8,
	padding3: u8,
};

export type __struct_SDL_GPURasterizerState = struct {
	fill_mode: SDL_GPUFillMode,
	cull_mode: SDL_GPUCullMode,
	front_face: SDL_GPUFrontFace,
	depth_bias_constant_factor: f32,
	depth_bias_clamp: f32,
	depth_bias_slope_factor: f32,
	enable_depth_bias: bool,
	enable_depth_clip: bool,
	padding1: u8,
	padding2: u8,
};

export type __struct_SDL_GPURenderPass = opaque;

export type __struct_SDL_GPUSampler = opaque;

export type __struct_SDL_GPUSamplerCreateInfo = struct {
	min_filter: SDL_GPUFilter,
	mag_filter: SDL_GPUFilter,
	mipmap_mode: SDL_GPUSamplerMipmapMode,
	address_mode_u: SDL_GPUSamplerAddressMode,
	address_mode_v: SDL_GPUSamplerAddressMode,
	address_mode_w: SDL_GPUSamplerAddressMode,
	mip_lod_bias: f32,
	max_anisotropy: f32,
	compare_op: SDL_GPUCompareOp,
	min_lod: f32,
	max_lod: f32,
	enable_anisotropy: bool,
	enable_compare: bool,
	padding1: u8,
	padding2: u8,
	props: SDL_PropertiesID,
};

export type __struct_SDL_GPUShader = opaque;

export type __struct_SDL_GPUShaderCreateInfo = struct {
	code_size: size,
	code: nullable *const u8,
	entrypoint: nullable *const c::char,
	format: SDL_GPUShaderFormat,
	stage: SDL_GPUShaderStage,
	num_samplers: u32,
	num_storage_textures: u32,
	num_storage_buffers: u32,
	num_uniform_buffers: u32,
	props: SDL_PropertiesID,
};

export type __struct_SDL_GPUStencilOpState = struct {
	fail_op: SDL_GPUStencilOp,
	pass_op: SDL_GPUStencilOp,
	depth_fail_op: SDL_GPUStencilOp,
	compare_op: SDL_GPUCompareOp,
};

export type __struct_SDL_GPUStorageBufferReadWriteBinding = struct {
	buffer: nullable *SDL_GPUBuffer,
	cycle: bool,
	padding1: u8,
	padding2: u8,
	padding3: u8,
};

export type __struct_SDL_GPUStorageTextureReadWriteBinding = struct {
	texture: nullable *SDL_GPUTexture,
	mip_level: u32,
	layer: u32,
	cycle: bool,
	padding1: u8,
	padding2: u8,
	padding3: u8,
};

export type __struct_SDL_GPUTexture = opaque;

export type __struct_SDL_GPUTextureCreateInfo = struct {
	__type: SDL_GPUTextureType,
	format: SDL_GPUTextureFormat,
	usage: SDL_GPUTextureUsageFlags,
	width: u32,
	height: u32,
	layer_count_or_depth: u32,
	num_levels: u32,
	sample_count: SDL_GPUSampleCount,
	props: SDL_PropertiesID,
};

export type __struct_SDL_GPUTextureLocation = struct {
	texture: nullable *SDL_GPUTexture,
	mip_level: u32,
	layer: u32,
	x: u32,
	y: u32,
	z: u32,
};

export type __struct_SDL_GPUTextureRegion = struct {
	texture: nullable *SDL_GPUTexture,
	mip_level: u32,
	layer: u32,
	x: u32,
	y: u32,
	z: u32,
	w: u32,
	h: u32,
	d: u32,
};

export type __struct_SDL_GPUTextureSamplerBinding = struct {
	texture: nullable *SDL_GPUTexture,
	sampler: nullable *SDL_GPUSampler,
};

export type __struct_SDL_GPUTextureTransferInfo = struct {
	transfer_buffer: nullable *SDL_GPUTransferBuffer,
	__offset: u32,
	pixels_per_row: u32,
	rows_per_layer: u32,
};

export type __struct_SDL_GPUTransferBuffer = opaque;

export type __struct_SDL_GPUTransferBufferCreateInfo = struct {
	usage: SDL_GPUTransferBufferUsage,
	__size: u32,
	props: SDL_PropertiesID,
};

export type __struct_SDL_GPUTransferBufferLocation = struct {
	transfer_buffer: nullable *SDL_GPUTransferBuffer,
	__offset: u32,
};

export type __struct_SDL_GPUVertexAttribute = struct {
	location: u32,
	buffer_slot: u32,
	format: SDL_GPUVertexElementFormat,
	__offset: u32,
};

export type __struct_SDL_GPUVertexBufferDescription = struct {
	slot: u32,
	pitch: u32,
	input_rate: SDL_GPUVertexInputRate,
	instance_step_rate: u32,
};

export type __struct_SDL_GPUVertexInputState = struct {
	vertex_buffer_descriptions: nullable *const SDL_GPUVertexBufferDescription,
	num_vertex_buffers: u32,
	vertex_attributes: nullable *const SDL_GPUVertexAttribute,
	num_vertex_attributes: u32,
};

export type __struct_SDL_GPUViewport = struct {
	x: f32,
	y: f32,
	w: f32,
	h: f32,
	min_depth: f32,
	max_depth: f32,
};
