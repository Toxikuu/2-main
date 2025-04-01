NAME="fuse3"
VERS="3.17.1"
DESC="Filesystem in userspace"
CATG="lib"
UPST="https://github.com/libfuse/libfuse.git"
VCMD="git ls-remote --tags --refs $UPST | sed -e 's@.*/@@' -e 's,fuse-,,' | grep -v '[a-Z]' | grep '^3' | sort -V | tail -n1"
DEPS=()

SOURCE="https://github.com/libfuse/libfuse/releases/download/fuse-$VERS/fuse-$VERS.tar.gz"
EXTRA=()

KCFG=(
    "FUSE_FS=*/M"
)

2b() {

with meson ninja

sed -i '/^udev/,$ s/^/#/' util/meson.build

ms -D tests=false -D examples=false
nj
ni

chmod u+s "$D"/usr/bin/fusermount3

# The documentation is over 100mb, so I've elected to exclude it.
# install -vDm644 ../doc/{README.NFS,kernel.txt} -t "$D"/usr/share/doc/fuse
# cp -Rv ../doc/html -T "$D"/usr/share/doc/fuse

}