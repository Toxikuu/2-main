NAME="libxcrypt"
VERS="4.4.37"
DESC="Modern library for password hashing"
UPST="https://github.com/besser82/libxcrypt.git"

SOURCE="https://github.com/besser82/libxcrypt/releases/download/v$VERS/libxcrypt-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg \
  --enable-hashes=strong,glibc  \
  --enable-obsolete-api=no      \
  --disable-failure-tokens

b-make
b-mi

CC="gcc -m32" \
b-cfg         \
    --host=i686-pc-linux-gnu     \
    --libdir=/usr/lib32          \
    --enable-hashes=strong,glibc \
    --enable-obsolete-api=glibc  \
    --disable-failure-tokens

b-make
mkdir -pv D/usr/lib32
cp -av .libs/libcrypt.so* D/usr/lib32

b-make install-pkgconfigDATA
ln -sfv libxcrypt.pc D/usr/lib32/pkgconfig/libcrypt.pc

}
