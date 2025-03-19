NAME="docbook-xsl-nons"
VERS="1.79.2"
DESC="DocBook XSL Stylesheets"
CATG="doc"
UPST=" https://github.com/docbook/xslt10-stylesheets.git"
DEPS=(
    "libxml2"
)

SOURCE="https://github.com/docbook/xslt10-stylesheets/releases/download/release/$VERS/docbook-xsl-nons-$VERS.tar.bz2"
EXTRA="https://www.linuxfromscratch.org/patches/blfs/svn/docbook-xsl-nons-$VERS-stack_fix-1.patch"

2b() {

tpatch "$SRC"/docbook-xsl-nons-$VERS-stack_fix-1.patch

install -vdm755 "$D"/usr/share/xml/docbook/xsl-stylesheets-nons-$VERS

cp -v -R VERSION assembly common eclipse epub epub3 extensions fo        \
         highlighting html htmlhelp images javahelp lib manpages params  \
         profiling roundtrip slides template tests tools webhelp website \
         xhtml xhtml-1_1 xhtml5                                          \
    "$D"/usr/share/xml/docbook/xsl-stylesheets-nons-$VERS

ln -s VERSION "$D"/usr/share/xml/docbook/xsl-stylesheets-nons-$VERS/VERSION.xsl

install -vDm644 README \
                    "$D"/usr/share/doc/docbook-xsl-nons-$VERS/README.txt
install -vm644  RELEASE-NOTES* NEWS* \
                    "$D"/usr/share/doc/docbook-xsl-nons-$VERS

}

2i() {

# create and populate the xml catalog file
if [ ! -d /etc/xml ]; then install -vdm755 /etc/xml; fi
if [ ! -f /etc/xml/catalog ]; then
    xmlcatalog --noout --create /etc/xml/catalog
fi

xmlcatalog --noout --add "rewriteSystem" \
           "http://cdn.docbook.org/release/xsl-nons/$VERS" \
           "/usr/share/xml/docbook/xsl-stylesheets-nons-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteSystem" \
           "https://cdn.docbook.org/release/xsl-nons/$VERS" \
           "/usr/share/xml/docbook/xsl-stylesheets-nons-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
           "http://cdn.docbook.org/release/xsl-nons/$VERS" \
           "/usr/share/xml/docbook/xsl-stylesheets-nons-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
           "https://cdn.docbook.org/release/xsl-nons/$VERS" \
           "/usr/share/xml/docbook/xsl-stylesheets-nons-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteSystem" \
           "http://cdn.docbook.org/release/xsl-nons/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-nons-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteSystem" \
           "https://cdn.docbook.org/release/xsl-nons/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-nons-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
           "http://cdn.docbook.org/release/xsl-nons/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-nons-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
           "https://cdn.docbook.org/release/xsl-nons/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-nons-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteSystem" \
           "http://docbook.sourceforge.net/release/xsl/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-nons-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
           "http://docbook.sourceforge.net/release/xsl/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-nons-$VERS" \
    /etc/xml/catalog

}
