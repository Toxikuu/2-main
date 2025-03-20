NAME="libtirpc"
VERS="1.3.6"
DESC="Linux port of Sun's Transport-independent RPC"
CATG="net lib"
UPST="git://linux-nfs.org/~steved/libtirpc.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' -e 's@-@.@g' | grep -v 'rc' | cut -d. -f2- | tail -n1"
DEPS=(
    "o^krb5"
    # if installed, rpcbind must be rebuilt on updates
)

SOURCE="https://downloads.sourceforge.net/libtirpc/libtirpc-$VERS.tar.bz2"
EXTRA=()

2b() {

cfg \
  --sysconfdir=/etc \
  --disable-gssapi # remove this if krb5's gssapi is wanted
mk
mi

}
