NAME="tcl"
VERS="8.6.16"
DESC="Tool Command Language"

SOURCE="https://downloads.sourceforge.net/tcl/tcl$VERS-src.tar.gz"
EXTRA=()

2b() {

cd unix
DS=1 b-cfg \
    --mandir=/usr/share/man \
    --disable-rpath
b-make

ver="${VERS%.*}"
sed -e "s@$BLD/unix@/usr/lib@"                \
    -e "s@$BLD@/usr/include@"                 \
    -e "s@'{/usr/lib} '@'/usr/lib/tcl=$ver'@" \
    -i tclConfig.sh

tdbcver=tdbc1.1.10
sed -e "s@$BLD/unix/pkgs/$tdbcver@/usr/lib/$tdbcver@"   \
    -e "s@$BLD/pkgs/$tdbcver/generic@/usr/include@"     \
    -e "s@$BLD/pkgs/$tdbcver/library@/usr/lib/tcl$ver@" \
    -e "s@$BLD/pkgs/$tdbcver@/usr/include@"             \
    -i pkgs/$tdbcver/tdbcConfig.sh

itclver=itcl4.3.2
sed -e "s@$BLD/unix/pkgs/$itclver@/usr/lib/$itclver@" \
    -e "s@$BLD/pkgs/$itclver/generic@/usr/include@"    \
    -e "s@$BLD/pkgs/$itclver@/usr/include@"            \
    -i pkgs/$itclver/itclConfig.sh

b-mi
b-make install-private-headers DESTDIR="$D"

chmod -v u+w "$D"/usr/lib/libtcl$ver.so
ln -sfv tclsh$ver "$D"/usr/bin/tclsh
ln -sfv libtcl$ver "$D"/usr/lib/libtcl.so
mv -vf "$D"/usr/share/man/man3/{Thread,Tcl_Thread}.3

}
