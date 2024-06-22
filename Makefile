# var
MODULE = $(nodir $(CURDIR))

# dir
CWD   = $(CURDIR)

# tool
CURL  = curl -L -o

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
	dub run dfmt -- -i $? && touch $@
