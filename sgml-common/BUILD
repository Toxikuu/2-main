# WARNING: This package is being used to test currently-unreleased 2 features

NAME="sgml-common"
VERS="0.6.3"
DESC="Tools for maintaining centralized SGML catalogs"
CATG="utils doc"
UPST="https://docbook.org/xml/"
SKIP_FETCH_VERSION=1
DEPS=(
    "bash"
)

SOURCE="https://sourceware.org/ftp/docbook-tools/new-trials/SOURCES/$NAME-$VERS.tgz"
EXTRA=(
    "https://www.linuxfromscratch.org/patches/blfs/svn/$NAME-$VERS-manpage-1.patch"
)

2build() {

tpatch "$SRC/$NAME-$VERS-manpage-1.patch"
autoreconf -fiv

cfg --sysconfdir=/etc
mk
mi docdir=/usr/share/doc

}

2postinstall() {

install-catalog --add /etc/sgml/sgml-ent.cat \
    /usr/share/sgml/sgml-iso-entities-8879.1986/catalog

install-catalog --add /etc/sgml/sgml-docbook.cat \
    /etc/sgml/sgml-ent.cat

}

2preupdate() {

install-catalog --remove /etc/sgml/sgml-ent.cat \
    /usr/share/sgml/sgml-iso-entities-8879.1986/catalog

install-catalog --remove /etc/sgml/sgml-docbook.cat \
    /etc/sgml/sgml-ent.cat

}
