NAME="docbook-xml4"
VERS="$VERS"
DESC="Widely-used XML scheme for writing documentation"
CATG="doc"
UPST=""
DEPS=(
    "libarchive"
    "libxml2"
)

SOURCE=""
EXTRA=()

2b() {

install -vdm755 "$D"/usr/share/xml/docbook/xml-dtd-$VERS
install -vdm755 "$D"/etc/xml

cp -v -af --no-preserve=ownership docbook.cat *.dtd ent/ *.mod \
    "$D"/usr/share/xml/docbook/xml-dtd-$VERS

# create and populate /etc/xml/docbook
if [ ! -e "$D"/etc/xml/docbook ]; then
    xmlcatalog --noout --create "$D"/etc/xml/docbook
fi
xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook XML V$VERS//EN" \
    "http://www.oasis-open.org/docbook/xml/$VERS/docbookx.dtd" \
    "$D"/etc/xml/docbook
xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook XML CALS Table Model V$VERS//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERS/calstblx.dtd" \
    "$D"/etc/xml/docbook
xmlcatalog --noout --add "public" \
    "-//OASIS//DTD XML Exchange Table Model 19990315//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERS/soextblx.dtd" \
    "$D"/etc/xml/docbook
xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook XML Information Pool V$VERS//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERS/dbpoolx.mod" \
    "$D"/etc/xml/docbook
xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook XML Document Hierarchy V$VERS//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERS/dbhierx.mod" \
    "$D"/etc/xml/docbook
xmlcatalog --noout --add "public" \
    "-//OASIS//ELEMENTS DocBook XML HTML Tables V$VERS//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERS/htmltblx.mod" \
    "$D"/etc/xml/docbook
xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook XML Notations V$VERS//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERS/dbnotnx.mod" \
    "$D"/etc/xml/docbook
xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook XML Character Entities V$VERS//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERS/dbcentx.mod" \
    "$D"/etc/xml/docbook
xmlcatalog --noout --add "public" \
    "-//OASIS//ENTITIES DocBook XML Additional General Entities V$VERS//EN" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERS/dbgenent.mod" \
    "$D"/etc/xml/docbook
xmlcatalog --noout --add "rewriteSystem" \
    "http://www.oasis-open.org/docbook/xml/$VERS" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERS" \
    "$D"/etc/xml/docbook
xmlcatalog --noout --add "rewriteURI" \
    "http://www.oasis-open.org/docbook/xml/$VERS" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERS" \
    "$D"/etc/xml/docbook

# create and populate /etc/xml/catalog
if [ ! -e "$D"/etc/xml/catalog ]; then
    xmlcatalog --noout --create "$D"/etc/xml/catalog
fi
xmlcatalog --noout --add "delegatePublic" \
    "-//OASIS//ENTITIES DocBook XML" \
    "file:///etc/xml/docbook" \
    "$D"/etc/xml/catalog
xmlcatalog --noout --add "delegatePublic" \
    "-//OASIS//DTD DocBook XML" \
    "file:///etc/xml/docbook" \
    "$D"/etc/xml/catalog
xmlcatalog --noout --add "delegateSystem" \
    "http://www.oasis-open.org/docbook/" \
    "file:///etc/xml/docbook" \
    "$D"/etc/xml/catalog
xmlcatalog --noout --add "delegateURI" \
    "http://www.oasis-open.org/docbook/" \
    "file:///etc/xml/docbook" \
    "$D"/etc/xml/catalog

# allow use with other versions
for DTDVERSION in 4.1.2 4.2 4.3 4.4
do
  xmlcatalog --noout --add "public" \
    "-//OASIS//DTD DocBook XML V$DTDVERSION//EN" \
    "http://www.oasis-open.org/docbook/xml/$DTDVERSION/docbookx.dtd" \
    /etc/xml/docbook
  xmlcatalog --noout --add "rewriteSystem" \
    "http://www.oasis-open.org/docbook/xml/$DTDVERSION" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERS" \
    /etc/xml/docbook
  xmlcatalog --noout --add "rewriteURI" \
    "http://www.oasis-open.org/docbook/xml/$DTDVERSION" \
    "file:///usr/share/xml/docbook/xml-dtd-$VERS" \
    /etc/xml/docbook
  xmlcatalog --noout --add "delegateSystem" \
    "http://www.oasis-open.org/docbook/xml/$DTDVERSION/" \
    "file:///etc/xml/docbook" \
    /etc/xml/catalog
  xmlcatalog --noout --add "delegateURI" \
    "http://www.oasis-open.org/docbook/xml/$DTDVERSION/" \
    "file:///etc/xml/docbook" \
    /etc/xml/catalog
done

}
