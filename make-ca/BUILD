NAME="make-ca"
VERS="1.15"
DESC="PKI setup script for LFS"
UPST="https://github.com/lfs-book/make-ca.git"

SOURCE="https://github.com/lfs-book/make-ca/archive/v1.14/make-ca-1.14.tar.gz"
EXTRA=()

2b() {

cat >> make-ca << "EOF"
ln -svf /etc/pki/tls/certs/ca-bundle.crt /etc/ssl/certs/ca-certificates.crt
EOF

b-mi
install -vdm755 "$D"/etc/ssl/local

}

2z() {

/usr/sbin/make-ca -g

}
