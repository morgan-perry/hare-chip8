use sdl3::*;
use types::c;
use fmt;
use os;
use io;
use fs;
use time;
use bufio;
use types;
use math::random;

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

type SE_VX_BYTE = struct {
	vx: u8,
	byte: u8,
};

type SNE_VX_BYTE = struct {
	vx: u8,
	byte: u8,
};

type SE_VX_VY = struct {
	vx: u8,
	vy: u8
};

type SNE_VX_VY = struct {
	vx: u8,
	vy: u8
};

// 0x8nnn opcodes
type LD_VX_VY = struct {
	vx: u8,
	vy: u8,
};

type OR_VX_VY = struct {
	vx: u8,
	vy: u8,
};

type AND_VX_VY = struct {
	vx: u8,
	vy: u8,
};

type XOR_VX_VY = struct {
	vx: u8,
	vy: u8,
};

type ADD_VX_VY = struct {
	vx: u8,
	vy: u8,
};

type SUB_VX_VY = struct {
	vx: u8,
	vy: u8,
};


type SHR_VX_VY = struct {
	vx: u8,
	vy: u8,
};

type SUBN_VX_VY = struct {
	vx: u8,
	vy: u8,
};

type SHL_VX_VY = struct {
	vx: u8,
	vy: u8,
};

type GET_KEY_VX = struct {
	vx: u8,
};

type SKP_KEY_VX = struct {
	vx: u8,
};

type SKNP_KEY_VX = struct {
	vx: u8,
};

type LD_VX_DT = struct {
	vx: u8,
};

type LD_DT_VX= struct {
	vx: u8,
};

type LD_ST_VX= struct {
	vx: u8,
};

type LD_F_VX = struct {
	vx: u8,
};

type LD_B_VX = struct {
	vx: u8,
};

type LD_I_VX = struct {
	vx: u8,
};

type JP_V0_ADDR = struct {
	addr: u16,
};

type RND_VX_BYTE = struct {
	vx: u8,
	byte: u8,
};

type LD_VX_I = struct {
	vx: u8,
};

type ADD_I_VX = struct {
	vx: u8,
};

type opcode = (
	CLS
	| RET
	| JP_ADDR
	| CALL_ADDR
	| LD_VX_BYTE
	| OR_VX_VY
	| AND_VX_VY
	| XOR_VX_VY
	| ADD_VX_VY
	| SUB_VX_VY
	| SHR_VX_VY
	| SHR_VX_VY
	| SUBN_VX_VY
	| SHL_VX_VY
 	| GET_KEY_VX
	| ADD_VX_BYTE
	| SE_VX_BYTE
	| SNE_VX_BYTE
	| SE_VX_VY
	| SNE_VX_VY
	| DISPLAY_VX_VY_NIB
	| LD_VX_VY
	| LD_I
	| JP_V0_ADDR
	| RND_VX_BYTE
	| SKNP_KEY_VX
	| SKP_KEY_VX
	| LD_VX_DT
	| LD_DT_VX
	| LD_ST_VX
	| LD_F_VX
	| LD_B_VX
	| LD_I_VX
	| LD_VX_I
	| ADD_I_VX
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
	sound_timer: u16,
	delay_timer: u16,
	keys: [16]u16
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
	// 	fmt::printfln("CLS")!;
		for (let tile &.. cpu.display) *tile = 0x0;
		increment_pc(cpu);
	case RET =>
	// 	fmt::printfln("RET: stack_ptr: {:X}", cpu.stack_ptr)!;
		cpu.stack_ptr -= 1;
		cpu.program_counter = cpu.stack[cpu.stack_ptr];
	case let op: CALL_ADDR =>
	// 	fmt::printfln("CALL_ADDR: addr: {:X}", op.addr)!;
		cpu.stack[cpu.stack_ptr] = cpu.program_counter + 2;
		cpu.stack_ptr += 1;
		cpu.program_counter = op.addr;
	case let op: JP_ADDR =>
		cpu.program_counter = op.addr;
	case let op: SE_VX_BYTE =>
	// 	fmt::printfln("SE_VX_BYTE: vx: {:X} to: {:X}", op.vx, op.byte)!;
		if (cpu.register[op.vx] == op.byte) increment_pc(cpu);
		increment_pc(cpu);
	case let op: SNE_VX_BYTE =>
	// 	fmt::printfln("SNE_VX_BYTE: vx: {:X} to: {:X}", op.vx, op.byte)!;
		if (cpu.register[op.vx] != op.byte) increment_pc(cpu);
		increment_pc(cpu);
	case let op: SE_VX_VY =>
	// 	fmt::printfln("SE_VX_BYTE: vx: {:X} vy: {:X}", op.vx, op.vy)!;
		if (cpu.register[op.vx] == cpu.register[op.vy]) increment_pc(cpu);
		increment_pc(cpu);
	case let op: SNE_VX_VY =>
	// 	fmt::printfln("SNE_VX_BYTE: vx: {:X} vy: {:X}", op.vx, op.vy)!;
		if (cpu.register[op.vx] != cpu.register[op.vy]) increment_pc(cpu);
		increment_pc(cpu);
	case let op: LD_VX_BYTE =>
	// 	fmt::printfln("LD_VX_BYTE: {:X} set to: {:X}", op.vx, op.byte)!;
		cpu.register[op.vx] = op.byte;
		increment_pc(cpu);
	case let op: LD_VX_VY =>
	// 	fmt::printfln("LD_VX_VY: vx: {} vy: {}", op.vx, op.vy)!;
		cpu.register[op.vx] = cpu.register[op.vy];
		increment_pc(cpu);
	case let op: OR_VX_VY =>
	// 	fmt::printfln("OR_VX_VY: {:X} OR {:X}", op.vx, op.vy)!;
		cpu.register[op.vx] = cpu.register[op.vx] | cpu.register[op.vy];
		increment_pc(cpu);
	case let op: AND_VX_VY =>
	// 	fmt::printfln("ADD_VX_VY: {:X} AND {:X}", op.vx, op.vy)!;
		cpu.register[op.vx] = cpu.register[op.vx] & cpu.register[op.vy];
		increment_pc(cpu);
	case let op: XOR_VX_VY =>
	// 	fmt::printfln("XOR_VX_VY: {:X} XOR {:X}", op.vx, op.vy)!;
		cpu.register[op.vx] = cpu.register[op.vx] ^ cpu.register[op.vy];
		increment_pc(cpu);
	case let op: ADD_VX_VY =>
	// 	fmt::printfln("ADD_VX_VY: {:X} ADD {:X}", op.vx, op.vy)!;
		// Must cast each register to u16 instead of sum as otherwise addition will
		// treat is as two u8's
		const sum = cpu.register[op.vx]: u16 + cpu.register[op.vy]: u16;
		cpu.register[op.vx] = sum: u8;
		cpu.register[0xF] = if (sum > 255) 1 else 0;
		increment_pc(cpu);
	case let op: SUB_VX_VY =>
	// 	fmt::printfln("SUB_VX_VY: {:X} SUB {:X}", op.vx, op.vy)!;
		// This is to pass both second -> fourth checkmark on flags ROM
		const old_vx = cpu.register[op.vx];
		cpu.register[op.vx] -= cpu.register[op.vy];
		cpu.register[0xF] = if (old_vx > cpu.register[op.vx]) 1 else 0;
		increment_pc(cpu);
	case let op: SHR_VX_VY =>
		// This is an ambiguous instruction, we are targeting regular CHIP-8, so CHIP-48
		// and SUPER-CHIP must be implemented differently Detailed here:
		// https://tobiasvl.github.io/blog/write-a-chip-8-emulator/#8xy6-and-8xye-shift
	// 	fmt::printfln("SHR_VX_VY: {:X} SHR {:X}", op.vx, op.vy)!;
		// The optional part is to set vx to the value of vy, this was present on the
		// original COSMAC VIP
		cpu.register[op.vx] = cpu.register[op.vy];
		const old_vx = cpu.register[op.vx];
		cpu.register[op.vx] >>= 1;
		cpu.register[0xF] = old_vx & 1;
		increment_pc(cpu);
	case let op: SHL_VX_VY =>
		// This is the other ambiguous instruction, similar to SHR_VX_VY
	// 	fmt::printfln("SHL_VX_VY: {:X} SHL {:X}", op.vx, op.vy)!;
		cpu.register[op.vx] = cpu.register[op.vy];
		const old_vx = cpu.register[op.vx];
		cpu.register[op.vx] <<= 1;
		cpu.register[0xF] = (old_vx >> 7) & 1;
		increment_pc(cpu);
	case let op: GET_KEY_VX =>
	// 	fmt::printfln("GET_KEY_VX: VX: {:X}", op.vx)!;
		// TODO: Still not fully implemented as it relies on more
		// accurate timing
		let key_pressed = false;
		for (let i = 0z; i < 16; i += 1) if (cpu.keys[i] == 1) {
			cpu.register[op.vx] = 1;
			key_pressed = true;
			break;
		};
		if (!key_pressed) return;
		increment_pc(cpu);
	case let op: SUBN_VX_VY =>
	// 	fmt::printfln("SUBN_VX_VY: {:X} OR {:X}", op.vx, op.vy)!;
		cpu.register[op.vx] = cpu.register[op.vy] - cpu.register[op.vx];
		cpu.register[0xF] =
			if (cpu.register[op.vy] >= cpu.register[op.vx]) 1 else 0;
		increment_pc(cpu);
	case let op: ADD_VX_BYTE =>
	// 	fmt::printfln("ADD_VX_BYTE")!;
		const sum: u16 = cpu.register[op.vx] + op.byte;
		if (sum > 255) {
			cpu.register[0xF] = 1;
		}
		 else {
			cpu.register[0xF] = 0;
		};
		cpu.register[op.vx] = sum: u8;
		increment_pc(cpu);
	case let op: LD_I => 
	// 	fmt::printfln("LD_I: set to: {:X}", op.addr)!;
		cpu.register_i = op.addr;
		increment_pc(cpu);
	case let op: JP_V0_ADDR =>
	// 	fmt::printfln("JP_V0_ADDR: addr: {:X}", op.addr)!;
		cpu.program_counter = cpu.register[op.addr + cpu.register[0x0]];
		increment_pc(cpu);
	case let op: RND_VX_BYTE =>
	// 	fmt::printfln("RND_VX_BYTE: vx: {:X}, byte: {:X}",
			// op.vx, op.byte)!;
		const cur_time = time::now(time::clock::MONOTONIC);
		const lol_random = (random::init(cur_time.nsec: u64) & op.byte): u8;
		cpu.register[op.vx] = lol_random;
		increment_pc(cpu);
	case let op: DISPLAY_VX_VY_NIB => 
	// 	fmt::printfln("DISPLAY_VX_VY_NIB: vx: {} vy: {} nib: {}",
			// op.vx, op.vy, op.nibble)!;
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
					// NOTE: This might be wrong
					cpu.display[idx] ^= 1;
					if (cpu.display[idx] == 1) {
						cpu.register[0xF] = 1;
					};
					};
			};
		};
		increment_pc(cpu);
	case let op: SKP_KEY_VX =>
	// 	fmt::printfln("SKP_KEY_VX: VX: {:X}: KEY: {:X}",
			// op.vx, cpu.register[op.vx])!;
		if (cpu.keys[cpu.register[op.vx]] == 1) increment_pc(cpu);
		increment_pc(cpu);
	case let op: SKNP_KEY_VX =>
	// 	fmt::printfln("SKNP_KEY_VX: VX: {:X}: KEY: {:X}",
			// op.vx, cpu.register[op.vx])!;
		if (cpu.keys[cpu.register[op.vx]] != 1) increment_pc(cpu);
		increment_pc(cpu);
	case let op: LD_VX_DT =>
	// 	fmt::printfln("LD_VX_DT: VX: {:X}", op.vx)!;
		cpu.register[op.vx] = cpu.delay_timer: u8;
		increment_pc(cpu);
	case let op: LD_DT_VX =>
	// 	fmt::printfln("LD_DT_VX: VX: {:X}", op.vx)!;
		cpu.delay_timer = cpu.register[op.vx];
		increment_pc(cpu);
	case let op: LD_ST_VX =>
	// 	fmt::printfln("LD_ST_VX: VX: {:X}", op.vx)!;
		cpu.sound_timer = cpu.register[op.vx];
		increment_pc(cpu);
	case let op: LD_F_VX => // TODO: Finish this
	// 	fmt::printfln("LD_F_VX: VX: {:X}", op.vx)!;
		increment_pc(cpu);
		case let op: LD_B_VX =>
	// 	fmt::printfln("LD_B_VX: VX: {:X}", op.vx)!;
		cpu.memory[cpu.register_i] = cpu.register[op.vx] / 100 % 10;
		cpu.memory[cpu.register_i+1] = cpu.register[op.vx] / 10 % 10;
		cpu.memory[cpu.register_i+2] = cpu.register[op.vx] % 10;
		increment_pc(cpu);
	case let op: LD_I_VX =>
	// 	fmt::printfln("LD_I_VX: VX: {:X}", op.vx)!;
		for (let i = 0z; i <= op.vx; i += 1) {
			cpu.memory[cpu.register_i + i] = cpu.register[i];
		};
		increment_pc(cpu);
	case let op: LD_VX_I =>
	// 	fmt::printfln("LD_VX_I: VX: {:X}", op.vx)!;
		for (let i = 0z; i <= op.vx; i += 1) {
			cpu.register[i] = cpu.memory[cpu.register_i + i];
		};
		increment_pc(cpu);
	case let op: ADD_I_VX =>
	// 	fmt::printfln("ADD_I_VX: VX: {:X}", op.vx)!;
		cpu.register_i += cpu.register[op.vx];
		increment_pc(cpu);
	// case => fmt::printfln("Unknown: {:X}", raw_opcode)!;
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
	case 0x2 => yield CALL_ADDR{ addr = NNN: u16 };
	case 0x3 => yield SE_VX_BYTE{ vx = X, byte = NN };
	case 0x4 => yield SNE_VX_BYTE{ vx = X, byte = NN };
	case 0x5 => yield SE_VX_VY{ vx = X, vy = Y };
	case 0x6 => yield LD_VX_BYTE { vx = X, byte = NN };
	case 0x7 => yield ADD_VX_BYTE { vx = X, byte = NN };
	case 0x8 => yield switch (N) {
		case 0x0 => yield LD_VX_VY{ vx = X, vy = Y };
		case 0x1 => yield OR_VX_VY{ vx = X, vy = Y };
		case 0x2 => yield AND_VX_VY{ vx = X, vy = Y };
		case 0x3 => yield XOR_VX_VY{ vx = X, vy = Y };
		case 0x4 => yield ADD_VX_VY{ vx = X, vy = Y };
		case 0x5 => yield SUB_VX_VY{ vx = X, vy = Y };
		case 0x6 => yield SHR_VX_VY{ vx = X, vy = Y };
		case 0x7 => yield SUBN_VX_VY{ vx = X, vy = Y };
		case 0xE => yield SHL_VX_VY{ vx = X, vy = Y };
		case => yield opcodeerr { raw = raw_opcode };
	};
	case 0x9 => yield SNE_VX_VY{ vx = X, vy = Y };
	case 0xA => yield LD_I{ addr = NNN };
	case 0xB => yield JP_V0_ADDR{ addr = NNN };
	case 0xC => yield RND_VX_BYTE{ vx = X, byte = NN };
	case 0xD => yield DISPLAY_VX_VY_NIB { vx = X, vy = Y, nibble = N };
	case 0xE => yield switch (NN) {
		case 0x9E => yield SKP_KEY_VX{ vx = X };
		case 0xA1 => yield SKNP_KEY_VX{ vx = X };
		case => yield opcodeerr{ raw = raw_opcode };
	};
	case 0xF => yield switch (NN) {
		case 0x07 => yield LD_VX_DT{ vx = X };
		case 0x0A => yield GET_KEY_VX{ vx = X };
		case 0x15 => yield LD_DT_VX{ vx = X };
		case 0x18 => yield LD_ST_VX{ vx = X };
		case 0x29 => yield LD_F_VX{ vx = X };
		case 0x33 => yield LD_B_VX{ vx = X };
		case 0x55 => yield LD_I_VX{ vx = X };
		case 0x65 => yield LD_VX_I{ vx = X };
		case 0x1E => yield ADD_I_VX{ vx = X };
		case => yield opcodeerr { raw = raw_opcode };
	};
	case => yield opcodeerr{ raw = raw_opcode };
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
