NAME="polkit"
VERS="126"
DESC="Toolkit for defining and handling authorizations"
UPST="https://github.com/polkit-org/polkit.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E '^[0-9]+$' | tail -n1"

SOURCE="https://github.com/polkit-org/polkit/archive/$VERS/polkit-$VERS.tar.gz"
EXTRA=()

2b() {

with meson ninja

sed -i '/systemd_sysusers_dir/s/^/#/' meson.build

ms  -D man=false                \
    -D tests=false              \
    -D session_tracking=elogind \
    -D introspection=false      \
    -D os_type=lfs
nj
ni

rm -vf "$D"/tmp/*.service
rm -rf "$D"/usr/lib/{sysusers,tmpfiles}.d

}

2z() {

getent group polkitd || groupadd -fg 27 polkitd
id polkitd || useradd -c "PolicyKit Daemon Owner" \
    -d /etc/polkit-1 -u 27 \
    -g polkitd -s /bin/false polkitd

}
