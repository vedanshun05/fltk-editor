# Makefile for the FLTK text editor example.
# Uses fltk-config (from the `fltk` package) to resolve all include/lib flags,
# exactly as recommended by the FLTK tutorial:
#   https://www.fltk.org/doc-1.4/editor.html

# Kept for reference / manual builds; `fltk-config --compile` uses them itself.
CXXFLAGS := $(shell fltk-config --cxxflags)
LDFLAGS  := $(shell fltk-config --ldflags)

editor: editor.cxx
	fltk-config --compile editor.cxx

clean:
	rm -f editor editor.o

.PHONY: clean
