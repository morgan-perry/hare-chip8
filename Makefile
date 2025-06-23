.POSIX:
.SUFFIXES:

LIBS=-lc -lSDL3

run:
	hare run $(LIBS) chip8

clean:
	rm -rf docs demo

docs:
	mkdir -p docs/sdl3/image
	haredoc -Fhtml sdl3 > docs/sdl3/index.html

.PHONY: clean demo docs run
