#
# Compile and install gsl
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/gsl-*.tar.gz
	mv gsl-* gsl
	cd gsl && ./configure --disable-shared --enable-static \
		--prefix=$(IPEDEPS) \
		--host=$(IPECROSS)-w64-mingw32 --build=i686-linux && \
		make && \
		make install
	rm $(IPEDEPS)/bin/gsl-histogram.exe $(IPEDEPS)/bin/gsl-randist.exe
	rm -fr $(IPEDEPS)/share
	rm -fr $(IPEDEPS)/lib/*.la

clean:
	rm -fr gsl
