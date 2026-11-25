#
# Compile and install lua
#

include ../common.mak

.PHONY: all clean

all:
	tar xzvf ../pkg/lua-*.tar.gz
	mv lua-* lua
	sed -i 's/^CC= gcc/CC= $$(IPECROSS)-w64-mingw32-gcc/' lua/src/Makefile
	sed -i 's/RANLIB=strip/RANLIB=$$(IPECROSS)-w64-mingw32-strip/' lua/src/Makefile
	make -C lua/src mingw
	install -m 0755 lua/src/lua55.dll $(IPEDEPS)/bin/lua
	mkdir -p $(IPEDEPS)/include/lua
	cd lua/src && cp lua.h luaconf.h lualib.h lauxlib.h $(IPEDEPS)/include/lua

clean:
	rm -fr lua
