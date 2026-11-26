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
		meson setup --cross-file ../../meson-cross-x86_64-w64-mingw32.txt \
			--buildtype=release --prefix=$(IPEDEPS) \
			build && \
		cd build && meson compile && meson install
	rm -fr $(IPEDEPS)/share

clean:
	rm -fr pixman
