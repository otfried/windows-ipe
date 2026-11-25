#
# Compile and install qhull
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/qhull-*.tgz
	mv qhull-* qhull
	cd qhull && $(MAKE) CC="$(IPECROSS)-w64-mingw32-gcc" FPIC= \
		bin-lib lib/libqhullstatic_r.a
	install -m 0755 qhull/lib/libqhullstatic_r.a $(IPEDEPS)/lib/libqhull_r.a
	mkdir -p $(IPEDEPS)/include/libqhull_r
	install -m 0644 qhull/src/libqhull_r/*.h $(IPEDEPS)/include/libqhull_r

clean:
	rm -fr qhull
