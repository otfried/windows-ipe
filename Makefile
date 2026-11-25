#
# Makefile for building the dependencies of Ipe, for Windows
#

IPEDEPS = $(shell pwd)/mingwlibs-$(IPECROSS)

subdirs = \
	zlib \
	libpng \
	freetype \
	qhull \
	spiro \
	gsl \
	lua \
	pixman \
	cairo

.PHONY: download setup $(subdirs)

all: $(subdirs)

download:
	$(MAKE) --directory=pkg $(GOAL)

setup:
	mkdir -p $(IPEDEPS)/bin
	mkdir -p $(IPEDEPS)/lib
	mkdir -p $(IPEDEPS)/include

$(subdirs):
	$(MAKE) --directory=$@ $(GOAL)

clean:
	rm -fr $(IPEDEPS)
	$(MAKE)	GOAL=clean
