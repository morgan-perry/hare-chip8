.POSIX:
.SUFFIXES:

LIBS=-lc -lSDL3

run:
	hare run $(LIBS) cmd/chip8

logo:
	hare run $(LIBS) cmd/chip8 roms/chip8-test-suite/bin/1-chip8-logo.ch8

ibm:
	hare run $(LIBS) cmd/chip8 roms/chip8-test-suite/bin/2-ibm-logo.ch8

build:
	hare build $(LIBS) cmd/chip8

check:
	hare test $(LIBS) cmd/chip8

clean:
	rm -rf docs chip8

docs:
	mkdir -p doc/chip8/image
	haredoc -Fhtml chip8 > docs/chip8/index.html

.PHONY: run build check clean docs logo
