NAME="fuse3"
VERS="3.16.2"
DESC="Filesystem in userspace"
CATG="lib"
UPST="https://github.com/libfuse/libfuse.git"
DEPS=()

SOURCE="https://github.com/libfuse/libfuse/releases/download/fuse-$VERS/fuse-$VERS.tar.gz"
EXTRA=()

KCFG=(
    "FUSE_FS=*/M"
)

2b() {

with meson ninja

sed -i '/^udev/,$ s/^/#/' util/meson.build

ms
nj
ni

chmod u+s "$D"/usr/bin/fusermount3

install -vDm644 doc/{README.NFS,kernel.txt} -t "$D"/usr/share/doc/fuse
cp -Rv doc/html -T "$D"/usr/share/doc/fuse

}
