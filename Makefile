.POSIX:
.SUFFIXES:

LIBS=-lc -lSDL3

run:
	hare run $(LIBS) cmd/chip8

build:
	hare build $(LIBS) cmd/chip8

check:
	hare test $(LIBS) cmd/chip8

clean:
	rm -rf docs chip8

docs:
	mkdir -p doc/chip8/image
	haredoc -Fhtml chip8 > docs/chip8/index.html

.PHONY: run build check clean docs
