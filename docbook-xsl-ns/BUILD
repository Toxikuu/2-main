NAME="docbook-xsl-ns"
VERS="1.79.2"
DESC="DocBook XSL Stylesheets (Namespaced)"
CATG="doc"
UPST="https://github.com/docbook/xslt10-stylesheets.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Ev '[a-Z]|-' | tail -n1"
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

}

2z() {

# create and populate xml catalog file
if [ ! -d /etc/xml ]; then install -vdm755 /etc/xml; fi
if [ ! -f /etc/xml/catalog ]; then
    xmlcatalog --noout --create /etc/xml/catalog
fi

xmlcatalog --noout --add "rewriteSystem" \
           "http://cdn.docbook.org/release/xsl/$VERS" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteSystem" \
           "https://cdn.docbook.org/release/xsl/$VERS" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
           "http://cdn.docbook.org/release/xsl/$VERS" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
           "https://cdn.docbook.org/release/xsl/$VERS" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteSystem" \
           "http://cdn.docbook.org/release/xsl/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteSystem" \
           "https://cdn.docbook.org/release/xsl/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
           "http://cdn.docbook.org/release/xsl/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
           "https://cdn.docbook.org/release/xsl/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteSystem" \
           "http://docbook.sourceforge.net/release/xsl-ns/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
           "http://docbook.sourceforge.net/release/xsl-ns/current" \
           "/usr/share/xml/docbook/xsl-stylesheets-$VERS" \
    /etc/xml/catalog

}