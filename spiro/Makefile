#
# Compile and install spiro
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/libspiro-*.tar.gz
	mv libspiro-* libspiro
	sed -i 's/#define LS_DLL_EXPORT __declspec(dllexport)/#define LS_DLL_EXPORT/' libspiro/spiro_intf.h
	cd libspiro && ./configure --disable-shared --enable-static \
		--prefix=$(IPEDEPS) \
		--host=$(IPECROSS)-w64-mingw32 \
		--target=$(IPECROSS)-w64-mingw32 \
		--build=i686-linux \
		make && \
		make install
	rm -fr $(IPEDEPS)/share
	rm $(IPEDEPS)/lib/libspiro.la

clean:
	rm -fr libspiro
