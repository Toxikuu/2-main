NAME="lua"
VERS="5.4.7"
DESC="Powerful lightweight programming language designed for extending applications"
CATG="lang dev"
UPST="https://github.com/lua/lua.git"
DEPS=()

SOURCE="https://www.lua.org/ftp/lua-$VERS.tar.gz"
EXTRA=(
    "https://www.linuxfromscratch.org/patches/blfs/svn/lua-$VERS-shared_library-1.patch"
)

2b() {

cat > lua.pc << EOF
prefix=/usr
INSTALL_BIN=\${prefix}/bin
INSTALL_INC=\${prefix}/include
INSTALL_LIB=\${prefix}/lib
INSTALL_MAN=\${prefix}/share/man/man1
INSTALL_LMOD=\${prefix}/share/lua/${VERS}
INSTALL_CMOD=\${prefix}/lib/lua/${VERS}
exec_prefix=\${prefix}
libdir=\${exec_prefix}/lib
includedir=\${prefix}/include

Name: Lua
Description: An Extensible Extension Language
Version: ${VERS%.*}
Requires:
Libs: -L\${libdir} -llua -lm -ldl
Cflags: -I\${includedir}
EOF

tpatch "$SRC"/lua-$VERS-shared_library-1.patch
mk linux

_install_opts=(
    INSTALL_TOP="$D/usr"
    INSTALL_DAT="cp -d"
    INSTALL_MAN="$D/usr/share/man/man1"
    TO_LIB="liblua.so liblua.so.${VERS%.*} liblua.so.${VERS}"
)

mi "${_install_opts[@]}"

install -vDm644 doc/*.{html,css,gif,png} -t "$D"/usr/share/doc/lua/
install -vDm644 lua.pc -t "$D"/usr/lib/pkgconfig/

}
