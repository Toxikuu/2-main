NAME="shadow"
VERS="4.17.4"
CATG="core security"
DESC="Secure password handling"
DEPS="linux-pam"
UPST="https://github.com/shadow-maint/shadow.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' -e 's,v,,' | grep '\\.' | grep -v '[a-Z]' | sort -V | tail -n1"
DEPS=(
    "libcap"
    "libxcrypt"
    "linux-pam"
    "acl"
    "attr"
)

SOURCE="https://github.com/shadow-maint/shadow/releases/download/$VERS/shadow-$VERS.tar.xz"
EXTRA=()

2b() {

find man -name Makefile.in -exec sed -i \
    -e 's/groups\. / /'    \
    -e 's/passwd\.5 / /'   \
    -e 's/getspnam\.3 / /' {} +

sed -e 's@#ENCRYPT_METHOD DES@ENCRYPT_METHOD YESCRYPT@' \
    -e 's@/var/spool/mail@/var/mail@'                   \
    -e '/PATH=/{s@/sbin:@@;s@/bin:@@}'                  \
    -i etc/login.defs

_cfg_opts=(
    --bindir=/usr/bin
    --libdir=/usr/lib
    --sysconfdir=/etc
    --exec-prefix=/usr

    --without-libbsd
    --without-audit
    --without-selinux
    --without-nscd # nscd is dead
    --without-su # provided by util-linux
    --without-tcb
    --without-bcrypt

    --with-libpam
    --with-yescrypt
    --with-group-name-max-length=32

    --disable-rpath
    --disable-nls
)

cfg ${_cfg_opts[@]}
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool

mk
mi

# Don't use shadow's /etc/pam.d files since we create our own
rm -vf "$D"/etc/pam.d/*

install -vDm644 "$D"/etc/login.defs "$D"/etc/login.defs.orig

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
                PASS_CHANGE_TRIES        \
                PASS_ALWAYS_WARN         \
                CHFN_AUTH ENCRYPT_METHOD \
                ENVIRON_FILE
do
    sed -i "s/^${FUNCTION}/# &/" "$D"/etc/login.defs
done

for FILE in login passwd su chpasswd newusers chage
do
    cp -vf "$PORT/$FILE" "$D"/etc/pam.d/
done

for PROGRAM in chfn chgpasswd chsh groupadd groupdel \
               groupmems groupmod useradd userdel usermod
do
    install -vDm644 "$D"/etc/pam.d/chage "$D"/etc/pam.d/${PROGRAM}
    sed -i "s/chage/$PROGRAM/" "$D"/etc/pam.d/${PROGRAM}
done

}

2z() {

# Linux-PAM uses pam_access.so and /etc/security/access.conf instead
rm -vf /etc/login.access{,.NOUSE}

# Linux-PAM uses pam_limits.so and /etc/security/limits.conf instead
rm -vf /etc/limits{,.NOUSE}

# Sync /etc/{shadow,passwd}
pwconv

}
#d bugfix
