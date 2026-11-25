#
# Compile and install freetype
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/freetype-*.tar.gz
	mv freetype-* freetype
	cd freetype && \
		./configure --host=$(IPECROSS)-w64-mingw32 --build=x86_64-linux \
		--prefix=$(IPEDEPS) --disable-static \
		--with-zlib=yes --with-png=no --with-harfbuzz=no \
		CPPFLAGS="-I$(IPEDEPS)/include" && \
		make && \
		make install
	rm -fr $(IPEDEPS)/share

clean:
	rm -fr freetype
