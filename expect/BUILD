NAME="expect"
VERS="5.45.4"
DESC="Tools for automating interactive applications"
UPST="https://sourceforge.net/projects/expect/files/Expect/" # this final backslash is necessary because sourceforge
VCMD="curl -s '$UPST' | rg 'tr title=' | head -n1 | cut -d'\"' -f2"

SOURCE="https://prdownloads.sourceforge.net/expect/expect$VERS.tar.gz"
EXTRA=("https://www.linuxfromscratch.org/patches/lfs/development/expect-5.45.4-gcc14-1.patch")

2b() {

# expect requires working ptys, so ensure functionality
python3 -c 'from pty import spawn; spawn(["echo", "ok"])' | grep ok

tpatch "$SRC"/expect-$VERS-gcc14-1.patch

cfg --with-tcl=/usr/lib     \
    --enable-shared         \
    --disable-rpath         \
    --mandir=/usr/share/man \
    --with-tclinclude=/usr/include

mk
make test
mi

ln -sfv expect$VERS/libexpect$VERS.so D/usr/lib

# avoid a conflict with whois's mkpasswd
mv -vf D/usr/bin/mkpasswd{,-expect}
mv -vf D/usr/share/man/man1/mkpasswd{,-expect}.1

}
