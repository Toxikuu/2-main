NAME="pkgconf"
VERS="2.3.0"
DESC="Package compiler and linker metadata toolkit"
UPST="https://github.com/pkgconf/pkgconf.git"

SOURCE="https://distfiles.ariadne.space/pkgconf/pkgconf-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi

ln -sv pkgconf D/usr/bin/pkg-config
ln -sv pkgconf.1 D/usr/share/man/man1/pkg-config.1

}
