.PHONY: all
all: weighttp

VERSION = 0.31
CCFLAGS = -O2 -std=gnu99 -Werror -Wall -pedantic -g \
		 -Wmissing-declarations -Wshadow -Wbad-function-cast \
		 -fno-strict-aliasing
LDFLAGS = -lpthread -lev
RM_F = rm -f
INSTALL_X = install -m 0755
PREFIX = /usr/local
MKDIR = mkdir -p

cfiles := $(wildcard src/*.c)
ofiles := $(patsubst src/%.c,%.o,$(cfiles))
hfiles := $(wildcard src/*.h)

%.c: $(hfiles)

%.o: src/%.c
	$(CC) -c -o $@ -Isrc -DVERSION='"$(VERSION)"' $(CCFLAGS) $<

weighttp: $(ofiles)
	$(CC) -o $@ $^ $(LDFLAGS)

.PHONY: clean
clean:
	$(RM_F) *.o weighttp

.PHONY: install
install: all
	$(MKDIR) $(DESTDIR)$(PREFIX)/bin/
	$(INSTALL_X) weighttp $(DESTDIR)$(PREFIX)/bin/

