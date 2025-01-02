NAME="shadow"
VERS="4.17.1"
DESC="Secure password handling"
UPST="https://github.com/shadow-maint/shadow.git"
VCMD="git ls-remote --tags '$UPST' | sed 's:.*/::' | grep -v rc | sort -V | grep -B1 19990709 | head -n1"
DEPS="linux-pam"

SOURCE="https://github.com/shadow-maint/shadow/releases/download/$VERS/shadow-$VERS.tar.xz"
EXTRA=()

2b() {

# TODO: consider whether to check this or INSTALLED
if [ ! -e /usr/lib/libpam.so ]; then
  die "Missing pam"
fi

sed -i 's/groups$(EXEEXT) //' src/Makefile.in

find man -name Makefile.in -exec sed -i 's/groups\.1 / /'   {} \;
find man -name Makefile.in -exec sed -i 's/getspnam\.3 / /' {} \;
find man -name Makefile.in -exec sed -i 's/passwd\.5 / /'   {} \;

sed -e 's@#ENCRYPT_METHOD DES@ENCRYPT_METHOD YESCRYPT@' \
    -e 's@/var/spool/mail@/var/mail@'                   \
    -e '/PATH=/{s@/sbin:@@;s@/bin:@@}'                  \
    -i etc/login.defs

./configure --sysconfdir=/etc \
            --disable-static  \
            --without-libbsd  \
            --with-{b,yes}crypt
b-make
b-mi exec_prefix=/usr pamddir=

install -v -m644 D/etc/login.defs D/etc/login.defs.orig

for FUNCTION in FAIL_DELAY               \
                FAILLOG_ENAB             \
                LASTLOG_ENAB             \
                MAIL_CHECK_ENAB          \
                OBSCURE_CHECKS_ENAB      \
                PORTTIME_CHECKS_ENAB     \
                QUOTAS_ENAB              \
                CONSOLE MOTD_FILE        \
                FTMP_FILE NOLOGINS_FILE  \
                ENV_HZ PASS_MIN_LEN      \
                SU_WHEEL_ONLY            \
                CRACKLIB_DICTPATH        \
                PASS_CHANGE_TRIES        \
                PASS_ALWAYS_WARN         \
                CHFN_AUTH ENCRYPT_METHOD \
                ENVIRON_FILE
do
    sed -i "s/^${FUNCTION}/# &/" D/etc/login.defs
done

}
