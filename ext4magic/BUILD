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

for p in "$SRC/$NAME-$VERS-"*.patch; do
  tpatch "$p"
done

cfg
mk
mi

}
