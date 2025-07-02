.POSIX:
.SUFFIXES:

LIBS=-lc -lSDL3

run:
	hare run $(LIBS) cmd/chip8

logo:
	hare run $(LIBS) cmd/chip8 roms/chip8-test-suite/bin/1-chip8-logo.ch8

ibm:
	hare run $(LIBS) cmd/chip8 roms/chip8-test-suite/bin/2-ibm-logo.ch8

corax:
	hare run $(LIBS) cmd/chip8 roms/chip8-test-suite/bin/3-corax+.ch8

flags:
	hare run $(LIBS) cmd/chip8 roms/chip8-test-suite/bin/4-flags.ch8

keys:
	hare run $(LIBS) cmd/chip8 roms/chip8-test-suite/bin/6-keypad.ch8

frame:
	hare run $(LIBS) cmd/chip8 "roms/chip8-roms/programs/Framed MK2 [GV Samways, 1980].ch8"

pong:
	hare run $(LIBS) cmd/chip8 "roms/chip8-roms/games/Pong (1 player).ch8"

particle:
	hare run $(LIBS) cmd/chip8 "roms/chip8-roms/demos/Particle Demo [zeroZshadow, 2008].ch8"

triangle:
	hare run $(LIBS) cmd/chip8 "roms/chip8-roms/demos/Sierpinski [Sergey Naydenov, 2010].ch8"

build:
	hare build $(LIBS) cmd/chip8

check:
	hare test $(LIBS) cmd/chip8

clean:
	rm -rf docs chip8

docs:
	mkdir -p doc/chip8/image
	haredoc -Fhtml chip8 > docs/chip8/index.html

.PHONY: run build check clean docs logo ibm corax flags keys frame pong particle triangle
