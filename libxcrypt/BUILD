NAME="libxcrypt"
VERS="4.4.38"
CATG="core security"
DESC="Modern library for password hashing"
UPST="https://github.com/besser82/libxcrypt.git"

SOURCE="https://github.com/besser82/libxcrypt/releases/download/v$VERS/libxcrypt-$VERS.tar.xz"
EXTRA=()

2b() {

cfg \
  --enable-hashes=strong,glibc  \
  --enable-obsolete-api=no      \
  --disable-failure-tokens

mk
mi

}
