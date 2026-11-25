#
# Compile and install pixman
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/pixman-*.tar.gz
	mv pixman-*[0-9] pixman
	cd pixman && \
		export PKG_CONFIG_LIBDIR=$(IPEDEPS)/lib/pkgconfig && \
		./configure --prefix=$(IPEDEPS) \
			--enable-shared --disable-static \
			--host=$(IPECROSS)-w64-mingw32 --build=i686-linux \
			CPPFLAGS="-I/sw/mingwlibs-$IPECROSS/include" \
			LDFLAGS="-L/sw/mingwlibs-$IPECROSS/lib" && \
		make && \
		make install
	rm $(IPEDEPS)/lib/libpixman*.la
	rm -fr $(IPEDEPS)/share

clean:
	rm -fr pixman
