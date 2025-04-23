NAME="bzip2"
VERS="66c46b8c9436613fd81bc5d03f63a61933a4dcc3"
CATG="core"
DESC="The bzip2 compression algorithm"
UPST="https://gitlab.com/bzip2/bzip2.git"

SOURCE="https://gitlab.com/$NAME/$NAME/-/archive/$NAME-$VERS/$NAME-$NAME-$VERS.tar.gz"
EXTRA=()

2b() {

sed -i 's@\(ln -s -f \)$(PREFIX)/bin/@\1@' Makefile
sed -i "s@(PREFIX)/man@(PREFIX)/share/man@g" Makefile

mk -f Makefile-libbz2_so
mk clean

mk
mk PREFIX=D/usr install

cp -av libbz2.so.* "$D"/usr/lib
ln -sv libbz2.so.$VERS "$D"/usr/lib/libbz2.so

cp -v bzip2-shared "$D"/usr/bin/bzip2
for i in "$D"/usr/bin/{bzcat,bunzip2}; do
  ln -sfv bzip2 $i
done

rm -fv "$D"/usr/lib/libbz2.a

mk clean
sed -e "s/^CC=.*/CC=gcc -m32/" -i Makefile{,-libbz2_so}
mk -f Makefile-libbz2_so
mk libbz2.a

install -vDm755 libbz2.so.$VERS "$D"/usr/lib32/libbz2.so.$VERS
ln -sf libbz2.so.$VERS "$D"/usr/lib32/libbz2.so
ln -sf libbz2.so.$VERS "$D"/usr/lib32/libbz2.so.1
ln -sf libbz2.so.$VERS "$D"/usr/lib32/libbz2.so.1.0
install -vDm644 libbz2.a "$D"/usr/lib32/libbz2.a

}
