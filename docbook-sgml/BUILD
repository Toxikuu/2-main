NAME="docbook-sgml"
VERS="4.5"
DESC="Document type definitions for verification of SGML data files against the DocBook rule set"
CATG="doc"
UPST="" # dead
DEPS=(
    "libarchive"
    "sgml-common"
)

EXTRA=(
    "https://www.docbook.org/sgml/$VERS/docbook-$VERS.zip"
)

2b() {

sed -e '/ISO 8879/d' \
    -e '/gml/d'      \
    -i docbook.cat

chown -R 0:0 .

DTDDIR="usr/share/sgml/docbook-sgml-$VERS"

# support v4.x
cat >> docbook.cat << "EOF"
  -- Begin Single Major Version catalog changes --

PUBLIC "-//OASIS//DTD DocBook V4.4//EN" "docbook.dtd"
PUBLIC "-//OASIS//DTD DocBook V4.3//EN" "docbook.dtd"
PUBLIC "-//OASIS//DTD DocBook V4.2//EN" "docbook.dtd"
PUBLIC "-//OASIS//DTD DocBook V4.1//EN" "docbook.dtd"
PUBLIC "-//OASIS//DTD DocBook V4.0//EN" "docbook.dtd"

  -- End Single Major Version catalog changes --
EOF

install -vDm644 docbook.cat "$D/$DTDDIR/catalog"
install -vm644 *.{dtd,mod,dcl} "$D/$DTDDIR"

}

2z() {

	install-catalog --add /etc/sgml/sgml-docbook-dtd-$VERS.cat \
		/usr/share/sgml/docbook-sgml-$VERS/catalog > /dev/null 2>&1

	install-catalog --add /etc/sgml/sgml-docbook-dtd-$VERS.cat \
		/etc/sgml/sgml-docbook.cat > /dev/null 2>&1

}
