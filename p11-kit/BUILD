NAME="p11-kit"
VERS="0.25.5"
DESC="Loads and enumerates PKCS#11 modules"
UPST="https://github.com/p11-glue/p11-kit.git"

SOURCE="https://github.com/p11-glue/p11-kit/releases/download/$VERS/p11-kit-$VERS.tar.xz"
EXTRA=()

2b() {

sed '20,$ d' -i trust/trust-extract-compat

cat >> trust/trust-extract-compat << "EOF"
# Copy existing anchor modifications to /etc/ssl/local
/usr/libexec/make-ca/copy-trust-modifications

# Update trust stores
/usr/sbin/make-ca -r
EOF

mkdir p11-build
cd    p11-build

CP=.. b-ms -D trust_paths=/etc/pki/anchors
b-ninja
b-ni

rm -rf *
CP=.. b-32ms -D trust_paths=/etc/pki/anchors
b-ninja
b-32ni

ln -sfv ./pkcs11/p11-kit-trust.so "$D"/usr/lib/libnssckbi.so
ln -sfv ./pkcs11/p11-kit-trust.so "$D"/usr/lib32/libnssckbi.so

}

2z() {

ln -sfv /usr/libexec/p11-kit/trust-extract-compat \
        /usr/bin/update-ca-certificates

}
