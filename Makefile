# Blah

# Path to strfile
STRFILE  ?= /usr/local/bin/strfile

# Path to rot13
ROT13    ?= /usr/local/bin/rot13

# Installation directories
FORTUNEDIR ?= /usr/local/var/fortunes
OFORTUNEDIR ?= $(FORTUNEDIR)/off

.PHONY: all install clean

all install clean::
	$(MAKE) $@ -C fortunes FORTUNEDIR=$(FORTUNEDIR) OFORTUNEDIR=$(OFORTUNEDIR)
