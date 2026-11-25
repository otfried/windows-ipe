#
# Compile and install zlib
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/zlib-*.tar.gz
	mv zlib-* zlib
	sed -i 's/^PREFIX =$$/PREFIX = $$(IPECROSS)-w64-mingw32-/' zlib/win32/Makefile.gcc
	make -C zlib -f win32/Makefile.gcc
	install -m 0755 zlib/zlib1.dll $(IPEDEPS)/bin
	install -m 0644 zlib/libz.dll.a $(IPEDEPS)/lib
	install -m 0644 zlib/zlib.h $(IPEDEPS)/include
	install -m 0644 zlib/zconf.h $(IPEDEPS)/include
	mkdir -p "$(IPEDEPS)/lib/pkgconfig"
	sed \
		-e 's|@prefix@|$(IPEDEPS)|g' \
		-e 's|@exec_prefix@|$${prefix}|g' \
		-e 's|@libdir@|$${exec_prefix}/lib|g' \
		-e 's|@sharedlibdir@|$${libdir}|g' \
		-e 's|@includedir@|$${prefix}/include|g' \
		-e "s|@VERSION@|$$(sed -n 's/^#define ZLIB_VERSION \"\(.*\)\".*/\1/p' zlib/zlib.h)|g" \
		zlib/zlib.pc.in > "$(IPEDEPS)/lib/pkgconfig/zlib.pc"

clean:
	rm -fr zlib
