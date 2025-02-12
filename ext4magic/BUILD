NAME="ext4magic"
VERS="0.3.2"
DESC="Utility to recover deleted files on the ext3/4 filesystems"
UPST="" # this project is dead

SOURCE="https://downloads.sourceforge.net/$NAME/$NAME-$VERS.tar.gz"
EXTRA=(
    "https://gitweb.gentoo.org/repo/gentoo.git/plain/sys-fs/ext4magic/files/ext4magic-0.3.2-fix-sys-types-h.patch"
    "https://gitweb.gentoo.org/repo/gentoo.git/plain/sys-fs/ext4magic/files/ext4magic-0.3.2-i_dir_acl.patch"
    "https://gitweb.gentoo.org/repo/gentoo.git/plain/sys-fs/ext4magic/files/ext4magic-0.3.2-sysmacros.patch"
)

2b() {

b-patch "$SRC/$NAME-$VERS-sysmacros.patch"
b-patch "$SRC/$NAME-$VERS-i_dir_acl.patch"
b-patch "$SRC/$NAME-$VERS-fix-sys-types-h.patch"

b-cfg
b-make
b-mi

}
