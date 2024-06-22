# var
MODULE = $(nodir $(CURDIR))

# src
D += $(wildcard src/*.d)

NC = pcb/1x2in/grb/1x2in.nc

# all
.PHONY: all
all: bin/$(MODULE) $(NC)
	dub run -- $(NC)

# format
.PHONY: format
format: tmp/format_d
tmp/format_d: $(D)
	dub run dfmt
