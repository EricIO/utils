# Directory variables
export TOPDIR=$(PWD)
export SRCDIR=src
export BINDIR=bin

# Compiler variables
export COMPILER=rustc
export CFLAGS=--out-dir $(TOPDIR)/bin

all:
	mkdir -p bin
	cd $(SRCDIR)/shell && $(MAKE)
	cd $(SRCDIR)/text  && $(MAKE)
	cd $(SRCDIR)/file  && $(MAKE)
	echo "Built system utils without any errors"
clean:
	rm -rf $(BINDIR)
