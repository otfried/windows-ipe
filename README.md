# windows-ipe
Build the dependencies for Ipe on Windows.

We compile on Linux or in WSL using the mingw64 toolchain.
```
sudo apt install gcc-mingw-w64-x86-64 g++-mingw-w64-x86-64 \
     mingw-w64-tools meson
```

Clone this repository:
```
git clone https://github.com/otfried/windows-ipe.git
```

Setup target (64-bit Windows):
```
export IPECROSS=x86_64
```

Then compile all libraries one by one:
```
make setup
make zlib
make lua
make spiro
make qhull
make gsl
make libpng
make freetype
make pixman
make cairo
```

Archive the libraries and store them safely.
```
tar czvf mingwlibs-x86_64.tar.gz mingwlibs-x86_64
```
