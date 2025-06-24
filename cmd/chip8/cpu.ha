use sdl3::*;
use types::c;
use fmt;
use os;
use io;
use fs;
use time;
use bufio;
use types;

type CLS = struct { x: void, };
type RET = struct { x: void, };

type JP_ADDR = struct {
	addr: u16,
};
type CALL_ADDR = struct {
	addr: u16,
};
type LD_VX_BYTE = struct {
	vx: u8,
	byte: u8,
};
type ADD_VX_BYTE = struct {
	vx: u8,
	byte: u8,
};

type opcode = (
	CLS | RET | JP_ADDR | CALL_ADDR | LD_VX_BYTE | ADD_VX_BYTE
);

type opcodeerr = !struct { raw: u16,};

type cpu_state = struct {
	memory: [4096]u8,
	stack: [16]u16,
	program_counter: u16,
	stack_ptr: u8,
	registers: [16]u8,
};

const font: [_]u8 = [
	0xF0, 0x90, 0x90, 0x90, 0xF0, // 0
	0x20, 0x60, 0x20, 0x20, 0x70, // 1
	0xF0, 0x10, 0xF0, 0x80, 0xF0, // 2
	0xF0, 0x10, 0xF0, 0x10, 0xF0, // 3
	0x90, 0x90, 0xF0, 0x10, 0x10, // 4
	0xF0, 0x80, 0xF0, 0x10, 0xF0, // 5
	0xF0, 0x80, 0xF0, 0x90, 0xF0, // 6
	0xF0, 0x10, 0x20, 0x40, 0x40, // 7
	0xF0, 0x90, 0xF0, 0x90, 0xF0, // 8
	0xF0, 0x90, 0xF0, 0x10, 0xF0, // 9
	0xF0, 0x90, 0xF0, 0x90, 0x90, // A
	0xE0, 0x90, 0xE0, 0x90, 0xE0, // B
	0xF0, 0x80, 0x80, 0x80, 0xF0, // C
	0xE0, 0x90, 0x90, 0x90, 0xE0, // D
	0xF0, 0x80, 0xF0, 0x80, 0xF0, // E
	0xF0, 0x80, 0xF0, 0x80, 0x80  // F
];

fn cycle(cpu: *cpu_state) void = {
	if (cpu.program_counter == 4096) return;
	const raw_opcode = construct_opcode(cpu);
	const decoded_opcode = match(decode_opcode(raw_opcode)){
	case let op: opcode =>
	 	yield op;
	case let err: opcodeerr =>
		if (err.raw == 0x0) void
		else fmt::printfln("IDK OPCODE : {:X} : XD MEMES", err.raw)!;
	case =>
		fmt::fatalf("ok wtf");
	};

	const first = raw_opcode >> 12;

	match (decoded_opcode) {
	case CLS => fmt::printfln("CLS")!;
	case => void;
	};
};

// Combines two u8's into a raw opcode
fn construct_opcode(cpu: *cpu_state) u16 = {
	const opcode = cpu.memory[cpu.program_counter]: u16 << 8
	| cpu.memory[cpu.program_counter + 1]: u16;
	return opcode;
};

// Reads u16 opcode and matches it with type defined in opcode
fn decode_opcode(raw_opcode: u16) (opcode | opcodeerr) = {
	const first_nibble = (raw_opcode >> 12)	& 0xF;
	const NNN = raw_opcode & 0xFFF;
	const NN = raw_opcode & 0xFF;
	const X = (raw_opcode >> 8) & 0xF;
	const Y = (raw_opcode >> 4) & 0xF;

	return switch (first_nibble) {
	case 0x0 =>
		yield switch (NNN) {
		case 0x0E0 => yield CLS{...};
		case 0x0EE => yield RET{...};
		case => yield opcodeerr{raw = raw_opcode,};
		};
	case 0x1 => yield JP_ADDR { addr = NNN: u16 };
	case => yield opcodeerr{raw = raw_opcode,};
	};
};

// Scans the Chip-8 ROM file byte by byte to supplied cpu_state
fn load_rom(filename: str, cpu: *cpu_state) void = {
	fmt::printfln("Reading Rom!")!;
	const input = match (os::open(filename)) {
	case let file: io::file =>
		yield file;
	case let err: fs::error =>
		fmt::fatalf("Error opening {}: {}",
			os::args[1], fs::strerror(err));
	};
	defer io::close(input)!;

	const scan = bufio::newscanner(input, types::SIZE_MAX);
	for (let i = 1u; true; i += 1) { // NOTE: might have to do: 0u
		const byte = match (bufio::scan_byte(&scan)!) {
		case io::EOF =>
			break;
		case let byte: u8 =>
			yield byte;
		};
		// 0x200 is 512 (End of Chip-8 Interpreter)
 		cpu.memory[0x200 + i] = byte; 
		// fmt::printfln("{}\t{:X}", 0x200 + i, byte)!;
	};
};

// Increments the program counter by the default op-code length: 2
fn increment_pc(cpu: *cpu_state) void = {
	cpu.program_counter += 2;
};

@test fn increment_pc() void = {
	let cpu = cpu_state {...};
	increment_pc(&cpu);
	assert(cpu.program_counter == 2);

	cpu.program_counter = 14;
	increment_pc(&cpu);
	increment_pc(&cpu);
	assert(cpu.program_counter == 18);
};

@test fn construct_opcode() void = {
	let cpu = cpu_state {...};
	cpu.memory[0] = 0x00;
	cpu.memory[1] = 0xEE;
	const opcode = construct_opcode(&cpu);
	// This test passes if you don't cast the bitshift op to u16 :(
	assert(opcode == 0x00EE, "Opcode did not equal 0x00EE");

	cpu.memory[0] = 0x12;
	cpu.memory[1] = 0xFF;
	const opcode = construct_opcode(&cpu);
	assert(opcode == 0x12FF, "Opcode did not equal 0x12FF");
};

@test fn decode_opcode() void = {
	const raw_op: u16 = 0x00E0;
	const dec_op: opcode =
		decode_opcode(raw_op)!; assert(dec_op is CLS);
	const raw_op: u16 = 0x00EE;
	const dec_op: opcode =
		decode_opcode(raw_op)!; assert(dec_op is RET);
};
