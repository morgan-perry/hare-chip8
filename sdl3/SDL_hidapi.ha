use types::c;

export def SDL_HID_API_BUS_BLUETOOTH: int = 2;

export def SDL_HID_API_BUS_I2C: int = 3;

export def SDL_HID_API_BUS_SPI: int = 4;

export def SDL_HID_API_BUS_UNKNOWN: int = 0;

export def SDL_HID_API_BUS_USB: int = 1;

export @symbol("SDL_hid_ble_scan") fn SDL_hid_ble_scan(active: bool) void;

export type SDL_hid_bus_type = __enum_SDL_hid_bus_type;

export @symbol("SDL_hid_close") fn SDL_hid_close(
	dev: nullable *SDL_hid_device,
) int;

export type SDL_hid_device = __struct_SDL_hid_device;

export @symbol("SDL_hid_device_change_count") fn SDL_hid_device_change_count(
) u32;

export type SDL_hid_device_info = __struct_SDL_hid_device_info;

export @symbol("SDL_hid_enumerate") fn SDL_hid_enumerate(
	vendor_id: c::ushort,
	product_id: c::ushort,
) nullable *SDL_hid_device_info;

export @symbol("SDL_hid_exit") fn SDL_hid_exit() int;

export @symbol("SDL_hid_free_enumeration") fn SDL_hid_free_enumeration(
	devs: nullable *SDL_hid_device_info,
) void;

export @symbol("SDL_hid_get_device_info") fn SDL_hid_get_device_info(
	dev: nullable *SDL_hid_device,
) nullable *SDL_hid_device_info;

export @symbol("SDL_hid_get_feature_report") fn SDL_hid_get_feature_report(
	dev: nullable *SDL_hid_device,
	data: nullable *c::ushort,
	length: size,
) int;

export @symbol("SDL_hid_get_indexed_string") fn SDL_hid_get_indexed_string(
	dev: nullable *SDL_hid_device,
	string_index: int,
	string: nullable *c::wchar,
	maxlen: size,
) int;

export @symbol("SDL_hid_get_input_report") fn SDL_hid_get_input_report(
	dev: nullable *SDL_hid_device,
	data: nullable *c::ushort,
	length: size,
) int;

export @symbol("SDL_hid_get_manufacturer_string") fn SDL_hid_get_manufacturer_string(
	dev: nullable *SDL_hid_device,
	string: nullable *c::wchar,
	maxlen: size,
) int;

export @symbol("SDL_hid_get_product_string") fn SDL_hid_get_product_string(
	dev: nullable *SDL_hid_device,
	string: nullable *c::wchar,
	maxlen: size,
) int;

export @symbol("SDL_hid_get_report_descriptor") fn SDL_hid_get_report_descriptor(
	dev: nullable *SDL_hid_device,
	buf: nullable *c::ushort,
	buf_size: size,
) int;

export @symbol("SDL_hid_get_serial_number_string") fn SDL_hid_get_serial_number_string(
	dev: nullable *SDL_hid_device,
	string: nullable *c::wchar,
	maxlen: size,
) int;

export @symbol("SDL_hid_init") fn SDL_hid_init() int;

export @symbol("SDL_hid_open") fn SDL_hid_open(
	vendor_id: c::ushort,
	product_id: c::ushort,
	serial_number: nullable *const c::wchar,
) nullable *SDL_hid_device;

export @symbol("SDL_hid_open_path") fn SDL_hid_open_path(
	path: nullable *const c::char,
) nullable *SDL_hid_device;

export @symbol("SDL_hid_read") fn SDL_hid_read(
	dev: nullable *SDL_hid_device,
	data: nullable *c::ushort,
	length: size,
) int;

export @symbol("SDL_hid_read_timeout") fn SDL_hid_read_timeout(
	dev: nullable *SDL_hid_device,
	data: nullable *c::ushort,
	length: size,
	milliseconds: int,
) int;

export @symbol("SDL_hid_send_feature_report") fn SDL_hid_send_feature_report(
	dev: nullable *SDL_hid_device,
	data: nullable *const c::ushort,
	length: size,
) int;

export @symbol("SDL_hid_set_nonblocking") fn SDL_hid_set_nonblocking(
	dev: nullable *SDL_hid_device,
	nonblock: int,
) int;

export @symbol("SDL_hid_write") fn SDL_hid_write(
	dev: nullable *SDL_hid_device,
	data: nullable *const c::ushort,
	length: size,
) int;

export type __enum_SDL_hid_bus_type = uint;

export type __struct_SDL_hid_device = opaque;

export type __struct_SDL_hid_device_info = struct {
	path: nullable *c::char,
	vendor_id: c::ushort,
	product_id: c::ushort,
	serial_number: nullable *c::wchar,
	release_number: c::ushort,
	manufacturer_string: nullable *c::wchar,
	product_string: nullable *c::wchar,
	usage_page: c::ushort,
	usage: c::ushort,
	interface_number: int,
	interface_class: int,
	interface_subclass: int,
	interface_protocol: int,
	bus_type: SDL_hid_bus_type,
	next: nullable *__struct_SDL_hid_device_info,
};
