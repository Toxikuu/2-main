NAME="bzip2"
VERS="1.0.8"
DESC="The bzip2 compression algorithm"
UPST="git://sourceware.org/git/bzip2.git"

SOURCE="https://www.sourceware.org/pub/bzip2/bzip2-$VERS.tar.gz"
EXTRA=()

2b() {

sed -i 's@\(ln -s -f \)$(PREFIX)/bin/@\1@' Makefile
sed -i "s@(PREFIX)/man@(PREFIX)/share/man@g" Makefile

b-make -f Makefile-libbz2_so
b-make clean

b-make
make PREFIX=D/usr install

cp -av libbz2.so.* "$D"/usr/lib
ln -sv libbz2.so.$VERS "$D"/usr/lib/libbz2.so

cp -v bzip2-shared "$D"/usr/bin/bzip2
for i in "$D"/usr/bin/{bzcat,bunzip2}; do
  ln -sfv bzip2 $i
done

rm -fv "$D"/usr/lib/libbz2.a

b-make clean
sed -e "s/^CC=.*/CC=gcc -m32/" -i Makefile{,-libbz2_so}
b-make -f Makefile-libbz2_so
b-make libbz2.a

install -vDm755 libbz2.so.$VERS "$D"/usr/lib32/libbz2.so.$VERS
ln -sf libbz2.so.$VERS "$D"/usr/lib32/libbz2.so
ln -sf libbz2.so.$VERS "$D"/usr/lib32/libbz2.so.1
ln -sf libbz2.so.$VERS "$D"/usr/lib32/libbz2.so.1.0
install -vDm644 libbz2.a "$D"/usr/lib32/libbz2.a

}
