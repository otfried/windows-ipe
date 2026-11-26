#
# Compile and install cairo
#

include ../common.mak

.PHONY: all clean

all:
	tar xJvf ../pkg/cairo-*.tar.xz
	mv cairo-* cairo
	sed -i '/#include "cairo-deprecated.h"/d' cairo/src/cairo.h
	cd cairo && \
		export PKG_CONFIG_LIBDIR=$(IPEDEPS)/lib/pkgconfig && \
		meson setup --cross-file ../../meson-cross-x86_64-w64-mingw32.txt \
			--buildtype=release --prefix=$(IPEDEPS) \
			-Dfontconfig=disabled -Dglib=disabled \
			-Dfreetype=enabled -Dpng=enabled \
			build && \
		cd build && meson compile && meson install
	rm $(IPEDEPS)/lib/libcairo-script-interpreter.*
	rm -fr $(IPEDEPS)/lib/cairo
	rm -fr $(IPEDEPS)/share

clean:
	rm -fr cairo
