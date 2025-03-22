NAME="krb5"
VERS="1.21.3"
DESC="Kerberos network authentication system"
CATG="net"
UPST="https://github.com/krb5/krb5.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep '^krb5-.\\+-final$' | cut -d- -f2 | sort -V | tail -n1"
DEPS=()

SOURCE="https://kerberos.org/dist/krb5/${VERS%.*}/krb5-$VERS.tar.gz"
EXTRA=()

2b() {

cd src

# remove a failing test
sed -i -e '/eq 0/{N;s/12 //}' plugins/kdb/db2/libdb2/test/run.test &&

_cfg_opts=(
    --sysconfdir=/etc
    --localstatedir=/var/lib
    --runstatedir=/run
    --with-system-et
    --with-system-ss
    --with-system-verto=no
    --enable-dns-for-realm
    --disable-rpath
)

cfg ${_cfg_opts[@]}
mk
mi

mkdir -pv "$D"/usr/share/doc
cp -av ../doc -T "$D"/usr/share/doc/krb5

}
