NAME="e2fsprogs"
VERS="1.47.1"
DESC="Programs for the ext4 filesystem"
UPST="https://github.com/tytso/e2fsprogs.git"

SOURCE="https://github.com/tytso/e2fsprogs/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

mkdir -pv build
cd        build

b-cfg \
    --sysconfdir=/etc   \
    --enable-elf-shlibs \
    --disable-libblkid  \
    --disable-libuuid   \
    --disable-uuidd     \
    --disable-fsck

b-make
b-mi

rm -vf D/usr/lib/{libcom_err,libe2p,libext2fs,libss}.a

}
