NAME="nushell"
VERS="0.103.0"
DESC="A new type of shell"
CATG="shells"
UPST="https://github.com/$NAME/$NAME.git"
DEPS=(
    "openssl"
    "zlib"
    "rust"
)

SOURCE="https://github.com/$NAME/$NAME/archive/refs/tags/$VERS.tar.gz"
EXTRA=()

2b() {

with rust

cbr

find target/release \
    -maxdepth 1     \
    -executable     \
    -type f         \
    -name "nu*"     \
    -exec install -vDm755 -t "$D/usr/bin/" "{}" +

install -vDm644 README.md -t "$D/usr/share/doc/$NAME/"

}

2z() {

grep -Fqx /usr/bin/nu /etc/shells || echo /usr/bin/nu >> /etc/shells

}
