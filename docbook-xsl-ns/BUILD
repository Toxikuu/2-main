NAME="docbook-xsl-ns"
VERS="$VERS"
DESC="DocBook XSL Stylesheets (Namespaced)"
CATG="doc"
UPST="https://github.com/docbook/xslt10-stylesheets.git"
DEPS=(
    "libxml2"
)

SOURCE="https://github.com/docbook/xslt10-stylesheets/releases/download/release/$VERS/docbook-xsl-$VERS.tar.bz2"
EXTRA="https://www.linuxfromscratch.org/patches/blfs/svn/docbook-xsl-$VERS-stack_fix-1.patch"

2b() {

tpatch "$SRC"/docbook-xsl-$VERS-stack_fix-1.patch

install -vdm755 "$D"/usr/share/xml/docbook/xsl-stylesheets-$VERS

install -vdm755 "$D"/usr/share/xml/docbook/xsl-stylesheets-$VERS

cp -v -R VERSION assembly common eclipse epub epub3 extensions fo        \
         highlighting html htmlhelp images javahelp lib manpages params  \
         profiling roundtrip slides template tests tools webhelp website \
         xhtml xhtml-1_1 xhtml5                                          \
    "$D"/usr/share/xml/docbook/xsl-stylesheets-$VERS

ln -sv VERSION "$D"/usr/share/xml/docbook/xsl-stylesheets-$VERS/VERSION.xsl

# create and populate xml catalog file
install -vdm755  "$D"/etc/xml
xmlcatalog --noout --create "$D"/etc/xml/catalog

xmlcatalog --noout --add "rewriteSystem" \
           "http://cdn.docbook.org/release/xsl/$VERS" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    "$D"/etc/xml/catalog

xmlcatalog --noout --add "rewriteSystem" \
           "https://cdn.docbook.org/release/xsl/$VERS" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    "$D"/etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
           "http://cdn.docbook.org/release/xsl/$VERS" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    "$D"/etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
           "https://cdn.docbook.org/release/xsl/$VERS" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    "$D"/etc/xml/catalog

xmlcatalog --noout --add "rewriteSystem" \
           "http://cdn.docbook.org/release/xsl/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    "$D"/etc/xml/catalog

xmlcatalog --noout --add "rewriteSystem" \
           "https://cdn.docbook.org/release/xsl/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    "$D"/etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
           "http://cdn.docbook.org/release/xsl/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    "$D"/etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
           "https://cdn.docbook.org/release/xsl/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    "$D"/etc/xml/catalog

xmlcatalog --noout --add "rewriteSystem" \
           "http://docbook.sourceforge.net/release/xsl-ns/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    "$D"/etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
           "http://docbook.sourceforge.net/release/xsl-ns/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    "$D"/etc/xml/catalog

}
