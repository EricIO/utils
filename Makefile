# Directory variables
SRCDIR=src
BINDIR=bin

# Compiler variables
COMPILER=rustc

all:
	mkdir -p bin
	rustc --out-dir $(BINDIR) $(SRCDIR)/yes.rs

clean:
	rm -rf $(BINDIR)
