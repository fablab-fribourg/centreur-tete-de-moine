sources := $(wildcard *.gle)
objects := $(patsubst %.gle,%.svg,$(sources))

all: $(objects)

clean:
	-rm $(objects)

%.svg: %.gle
	gle -device svg $<

.phony: all clean
