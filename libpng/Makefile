#
# Compile and install libpng
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/libpng-*.tar.gz
	mv libpng-* libpng
	cd libpng && \
		export PKG_CONFIG_LIBDIR=$(IPEDEPS)/lib/pkgconfig && \
		./configure --prefix=$(IPEDEPS) \
			--host=$(IPECROSS)-w64-mingw32 --build=i686-linux \
			--disable-static \
			CPPFLAGS="-I$(IPEDEPS)/include" \
	    		LDFLAGS="-L$(IPEDEPS)/lib" && \
		make
	install -m 0755 libpng/.libs/libpng16-16.dll $(IPEDEPS)/bin
	install -m 0755 libpng/.libs/libpng16.dll.a $(IPEDEPS)/lib
	cd libpng && install -m 0644 png.h pngconf.h pnglibconf.h $(IPEDEPS)/include
	install -m 0644 libpng/libpng16.pc $(IPEDEPS)/lib/pkgconfig
	sed -i '/^Requires.private:/d' $(IPEDEPS)/lib/pkgconfig/libpng16.pc

clean:
	rm -fr libpng
