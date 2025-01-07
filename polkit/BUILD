NAME="polkit"
VERS="125"
DESC="Toolkit for defining and handling authorizations"
UPST="https://github.com/polkit-org/polkit.git"

SOURCE="https://github.com/polkit-org/polkit/archive/$VERS/polkit-$VERS.tar.gz"
EXTRA=()

2b() {

sed -i '/systemd_sysusers_dir/s/^/#/' meson.build

mkdir -pv build
b-ms -C build \
    -D man=false                \
    -D tests=false              \
    -D session_tracking=elogind \
    -D introspection=false      \
    -D os_type=lfs
b-ninja -C build
b-ni    -C build

rm -vf "$D"/tmp/*.service
rm -rf "$D"/usr/lib/{sysusers,tmpfiles}.d

}

2z() {

groupadd -fg 27 polkitd &&
useradd -c "PolicyKit Daemon Owner" -d /etc/polkit-1 -u 27 \
        -g polkitd -s /bin/false polkitd

}
