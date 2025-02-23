NAME="tcl"
VERS="8.6.16"
DESC="Tool Command Language"
UPST="https://github.com/tcltk/tcl.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' -e 's@^core-@@' -e 's@-@.@g' | grep -Ev '[a-z]' | grep '\\.' | tail -n1"

SOURCE="https://downloads.sourceforge.net/tcl/tcl$VERS-src.tar.gz"
EXTRA=()

2b() {

cd unix
cfg --disable-rpath --mandir=/usr/share/man
mk

ver="${VERS%.*}"

mk INSTALL_ROOT="$D" install install-private-headers
ln -sfv tclsh$ver     "$D"/usr/bin/tclsh
ln -sfv libtcl$ver.so "$D"/usr/lib/libtcl.so
install -Dm644 tcl.m4 -t "$D"/usr/share/aclocal
chmod -v 644 "$D"/usr/lib/libtclstub$ver.a
chmod -v u+w "$D"/usr/lib/libtcl$ver.so

sed -e "s@$BLD/unix@/usr/lib@"                \
    -e "s@$BLD@/usr/include@"                 \
    -e "s@'{/usr/lib} '@'/usr/lib/tcl$ver'@"  \
    -i "$D"/usr/lib/tclConfig.sh

tdbcver=tdbc1.1.10
sed -e "s@$BLD/unix/pkgs/$tdbcver@/usr/lib/$tdbcver@"   \
    -e "s@$BLD/pkgs/$tdbcver/generic@/usr/include@"     \
    -e "s@$BLD/pkgs/$tdbcver/library@/usr/lib/tcl$ver@" \
    -e "s@$BLD/pkgs/$tdbcver@/usr/include@"             \
    -i "$D"/usr/lib/$tdbcver/tdbcConfig.sh

itclver=itcl4.3.2
sed -e "s@$BLD/unix/pkgs/$itclver@/usr/lib/$itclver@" \
    -e "s@$BLD/pkgs/$itclver/generic@/usr/include@"    \
    -e "s@$BLD/pkgs/$itclver@/usr/include@"            \
    -i "$D"/usr/lib/$itclver/itclConfig.sh

mv -vf "$D"/usr/share/man/man3/{Thread,Tcl_Thread}.3

}
