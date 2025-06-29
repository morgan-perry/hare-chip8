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

type DISPLAY_VX_VY_NIB = struct {
	vx: u8,
	vy: u8,
	nibble: u8,
};

type LD_I = struct {
	addr: u16,
};

type opcode = (
	CLS
	| RET
	| JP_ADDR
	| CALL_ADDR
	| LD_VX_BYTE
	| ADD_VX_BYTE
	| DISPLAY_VX_VY_NIB
	| LD_I
);

type opcodeerr = !struct { raw: u16,};

type cpu_state = struct {
	memory: [4096]u8,
	stack: [16]u16,
	program_counter: u16,
	stack_ptr: u8,
	register: [16]u8,
	register_i: u16,
	display: [64 * 32]u8,
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
	if (cpu.program_counter > 0xFFF) return;
	const raw_opcode = construct_opcode(cpu);
	const opcode = match(decode_opcode(raw_opcode)){
	case let op: opcode =>
	 	yield op;
	case let err: opcodeerr =>
		if (err.raw == 0x0) void else fmt::printfln("{:X}", err.raw)!;
		return;
	case =>
		fmt::fatalf("ok wtf");
	};

	match (opcode) {
	case CLS =>
		fmt::printfln("CLS")!;
		for (let tile .. cpu.display) tile = 0x00;
		increment_pc(cpu);
	case RET =>
		fmt::printfln("RET")!;
		increment_pc(cpu);
	case let op: LD_VX_BYTE =>
		fmt::printfln("LD_VX_BYTE: {:X} set to: {:X}", op.vx, op.byte)!;
		cpu.register[op.vx] = op.byte;
		increment_pc(cpu);
	case ADD_VX_BYTE =>
		fmt::printfln("ADD_VX_BYTE")!;
		increment_pc(cpu);
	case let op: LD_I => 
		fmt::printfln("LD_I: set to: {:X}", op.addr & 0x0FFF)!;
		cpu.register_i = op.addr & 0x0FFF;
		increment_pc(cpu);
	case let op: DISPLAY_VX_VY_NIB => 
		fmt::printfln("DISPLAY_VX_VY_NIB: vx: {} vy: {} nib: {}",
			op.vx, op.vy, op.nibble)!;
		cpu.register[0xF] = 0;
		const registerX: u8 = cpu.register[op.vx];
		const registerY: u8 = cpu.register[op.vy];
		for (let y = 0z; y < op.nibble; y += 1) {
			const sprite = cpu.memory[cpu.register_i + y];
			for (let x = 0z; x < 8; x += 1) {
				const v: u8 = 0x80;
				if ((sprite & (v >> x)) != 0) {
					const tX = (registerX + x) % 64;
					const tY = (registerY + y) % 32;
					const idx = tX + tY * 64;
					cpu.display[idx] ^= 1;
					if (cpu.display[idx] == 0)
						cpu.register[0x0F] = 1;
					};
			};
		};
		increment_pc(cpu);
	case let op: JP_ADDR => 
		let jp_addr = op.addr & 0x0FFF + cpu.register[0]: u16;
		fmt::printfln("JP_ADDR: to: {:X}", jp_addr)!;
		cpu.program_counter = jp_addr;
	case => fmt::printfln("Unknown: {:X}", raw_opcode)!;
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
	const NNN: u16 = raw_opcode & 0x0FFF;
	const NN: u8 = raw_opcode: u8 & 0x00FF;
	const X: u8 = ((raw_opcode & 0x0F00) >> 8): u8;
	const Y: u8 = ((raw_opcode & 0x00F0) >> 4): u8;
	const N: u8 = (raw_opcode & 0x000F): u8;

	return switch (first_nibble) {
	case 0x0 =>
		yield switch (NNN) {
		case 0x0E0 => yield CLS{...};
		case 0x0EE => yield RET{...};
		case => yield opcodeerr{raw = raw_opcode};
		};
	case 0x1 => yield JP_ADDR { addr = NNN: u16 };
	case 0x6 => yield LD_VX_BYTE { vx = X, byte = NN};
	case 0x8 => yield ADD_VX_BYTE { vx = X, byte = NN};
	case 0xD => yield DISPLAY_VX_VY_NIB { vx = X, vy = Y, nibble = N};
	case 0xA => yield LD_I{ addr = NNN,};
	case => yield opcodeerr{raw = raw_opcode};
	};
};

// Loads the preformatted fonts into the memory from 0x000 to 0x1FF
fn load_font(cpu: *cpu_state) void = {
	fmt::printfln("Loading Font")!;
	for (let i = 0z; i < len(font); i += 1) cpu.memory[i] = font[i];
};

// Scans the Chip-8 ROM file byte by byte to supplied cpu_state
fn load_rom(filename: str, cpu: *cpu_state) void = {
	fmt::printfln("Loading Rom")!;
	const input = match (os::open(filename)) {
	case let file: io::file =>
		yield file;
	case let err: fs::error =>
		fmt::fatalf("Error opening {}: {}",
			os::args[1], fs::strerror(err));
	};
	defer io::close(input)!;

	const scan = bufio::newscanner(input, types::SIZE_MAX);
	for (let i = 0u; true; i += 1) {
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
	fmt::printfln("Read ROM")!;
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
