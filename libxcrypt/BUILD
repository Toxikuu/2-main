NAME="libxcrypt"
VERS="4.4.37"
DESC="Modern library for password hashing"

SOURCE="https://github.com/besser82/libxcrypt/releases/download/v$VERS/libxcrypt-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg \
  --enable-hashes=strong,glibc  \
  --enable-obsolete-api=no      \
  --disable-failure-tokens

b-make
b-mi

b-32cfg \
    --enable-hashes=strong,glibc \
    --enable-obsolete-api=glibc  \
    --disable-failure-tokens

b-make
mkdir -pv "$D"/usr/lib32/pkgconfig
cp -av .libs/libcrypt.so* "$D"/usr/lib32

b-make install-pkgconfigDATA
ln -sfv libxcrypt.pc "$D"/usr/lib32/pkgconfig/libcrypt.pc

}
