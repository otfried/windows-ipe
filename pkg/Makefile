#
# Download everything
#

ZLIB_VERSION="1.4"
PIXMAN_VERSION="0.42.2"
CAIRO_VERSION="1.18.0"
FREETYPE_VERSION="2.13.2"
PNG_VERSION="1.6.43"
LUA_VERSION="5.5.1"
GSL_VERSION="2.7.1"
SPIRO_VERSION="20221101"
QHULL_VERSION="2020-src-8.0.2"

zlibbase="https://zlib.net"
zlib="zlib-$(ZLIB_VERSION).tar.gz"
freetypebase="https://download.savannah.gnu.org/releases/freetype"
freetype="freetype-$(FREETYPE_VERSION).tar.gz"
libpngbase="https://download.sourceforge.net/libpng"
libpng="libpng-$(PNG_VERSION).tar.gz"
cairobase="https://www.cairographics.org/releases"
cairosrc="cairo-$(CAIRO_VERSION).tar.xz"
pixmansrc="pixman-$(PIXMAN_VERSION).tar.gz"
luabase="http://www.lua.org/ftp"
lua="lua-$(LUA_VERSION).tar.gz"
gslbase="http://gnu.askapache.com/gsl"
gsl="gsl-$(GSL_VERSION).tar.gz"
spirobase="https://github.com/fontforge/libspiro/releases/download/$(SPIRO_VERSION)"
spiro="libspiro-dist-$(SPIRO_VERSION).tar.gz"
qhullbase="http://www.qhull.org/download"
qh="qhull-$(QHULL_VERSION).tgz"

download:
	wget -N $(zlibbase)/$(zlib)
	wget -N $(freetypebase)/$(freetype)
	wget -N $(libpngbase)/$(libpng)
	wget -N $(cairobase)/$(cairosrc)
	wget -N $(cairobase)/$(pixmansrc)
	wget -N $(luabase)/$(lua)
	wget -N $(gslbase)/$(gsl)
	wget -N $(spirobase)/$(spiro)
	wget -N $(qhullbase)/$(qh)

