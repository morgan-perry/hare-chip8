use types::c;

export @symbol("SDL_CloseSensor") fn SDL_CloseSensor(
	sensor: nullable *SDL_Sensor,
) void;

export @symbol("SDL_GetSensorData") fn SDL_GetSensorData(
	sensor: nullable *SDL_Sensor,
	data: nullable *f32,
	num_values: int,
) bool;

export @symbol("SDL_GetSensorFromID") fn SDL_GetSensorFromID(
	instance_id: SDL_SensorID,
) nullable *SDL_Sensor;

export @symbol("SDL_GetSensorID") fn SDL_GetSensorID(
	sensor: nullable *SDL_Sensor,
) SDL_SensorID;

export @symbol("SDL_GetSensorName") fn SDL_GetSensorName(
	sensor: nullable *SDL_Sensor,
) nullable *const c::char;

export @symbol("SDL_GetSensorNameForID") fn SDL_GetSensorNameForID(
	instance_id: SDL_SensorID,
) nullable *const c::char;

export @symbol("SDL_GetSensorNonPortableType") fn SDL_GetSensorNonPortableType(
	sensor: nullable *SDL_Sensor,
) int;

export @symbol("SDL_GetSensorNonPortableTypeForID") fn SDL_GetSensorNonPortableTypeForID(
	instance_id: SDL_SensorID,
) int;

export @symbol("SDL_GetSensorProperties") fn SDL_GetSensorProperties(
	sensor: nullable *SDL_Sensor,
) SDL_PropertiesID;

export @symbol("SDL_GetSensorType") fn SDL_GetSensorType(
	sensor: nullable *SDL_Sensor,
) SDL_SensorType;

export @symbol("SDL_GetSensorTypeForID") fn SDL_GetSensorTypeForID(
	instance_id: SDL_SensorID,
) SDL_SensorType;

export @symbol("SDL_GetSensors") fn SDL_GetSensors(
	count: nullable *int,
) nullable *SDL_SensorID;

export @symbol("SDL_OpenSensor") fn SDL_OpenSensor(
	instance_id: SDL_SensorID,
) nullable *SDL_Sensor;

export def SDL_SENSOR_ACCEL: int = 1;

export def SDL_SENSOR_ACCEL_L: int = 3;

export def SDL_SENSOR_ACCEL_R: int = 5;

export def SDL_SENSOR_GYRO: int = 2;

export def SDL_SENSOR_GYRO_L: int = 4;

export def SDL_SENSOR_GYRO_R: int = 6;

export def SDL_SENSOR_INVALID: int = -1;

export def SDL_SENSOR_UNKNOWN: int = 0;

export type SDL_Sensor = __struct_SDL_Sensor;

export type SDL_SensorID = u32;

export type SDL_SensorType = __enum_SDL_SensorType;

export @symbol("SDL_UpdateSensors") fn SDL_UpdateSensors() void;

export type __enum_SDL_SensorType = int;

export type __struct_SDL_Sensor = opaque;
