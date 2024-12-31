NAME="expect"
VERS="5.45.4"
DESC="Tools for automating interactive applications"
UPST="https://sourceforge.net/projects/expect/files"
VCMD="curl -s https://sourceforge.net/projects/expect/files/Expect/ | rg 'tr title=' | head -n1 | cut -d'\"' -f2"

SOURCE="https://prdownloads.sourceforge.net/expect/expect$VERS.tar.gz"
EXTRA=("https://www.linuxfromscratch.org/patches/lfs/development/expect-5.45.4-gcc14-1.patch")

2b() {

# expect requires working ptys
python3 -c 'from pty import spawn; spawn(["echo", "ok"])' | grep ok

b-patch "$SRC"/expect-5.45.4-gcc14-1.patch

b-cfg \
    --with-tcl=/usr/lib     \
    --enable-shared         \
    --disable-rpath         \
    --mandir=/usr/share/man \
    --with-tclinclude=/usr/include

b-make
b-make test
b-mi

ln -sfv expect$VERS/libexpect$VERS.so D/usr/lib

# avoid a conflict with whois's mkpasswd
mv -vf D/usr/bin/mkpasswd{,-expect}
mv -vf D/usr/share/man/man1/mkpasswd{,-expect}.1

}
