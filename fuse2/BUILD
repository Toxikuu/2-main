NAME="fuse2"
VERS="2.9.9"
DESC="Filesystem in userspace"
CATG="bin"
UPST="https://github.com/libfuse/libfuse.git"
VCMD="git ls-remote --tags --refs $UPST | sed 's@.*/@@' | grep 'fuse-2\\.9\\.' | tail -n1 | cut -d- -f2"  # avoid fuse3
DEPS=()

SOURCE="https://github.com/libfuse/libfuse/releases/download/fuse-$VERS/fuse-$VERS.tar.gz"
EXTRA=(
    "https://gitlab.archlinux.org/archlinux/packaging/packages/fuse2/-/raw/main/conditionally-define-closefrom.patch"
)

KCFG=(
    "FUSE_FS=*/M",
    "CUSE=*/M",
)

2b() {

tpatch "$SRC"/conditionally-define-closefrom.patch
autoreconf -fiv

cfg INIT_D_PATH=/tmp/init.d
mk
mi

rm -rf "$D"/tmp/init.d

install -vdm755 "$D"/usr/share/doc/fuse
install -vDm644 doc/{how-fuse-works,kernel.txt} "$D"/usr/share/doc/fuse

cat > "$D"/etc/fuse.conf << "EOF"
# Set the maximum number of FUSE mounts allowed to non-root users.
# The default is 1000.
#
#mount_max = 1000

# Allow non-root users to specify the 'allow_other' or 'allow_root'
# mount options.
#
#user_allow_other
EOF

}
