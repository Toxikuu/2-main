NAME="nvidia"
VERS="570.133.07"
DESC="The NVIDIA drivers"
CATG="drivers"
UPST="https://github.com/NVIDIA/open-gpu-kernel-modules.git"  # often inaccurate because nvidia
DEPS=(
    "tox/mesa"
    "kernel"  # nvidia must be rebuilt whenever the kernel sources change
    "libglvnd"
    "libvdpau"
    "vulkan-loader"
    "wayland"
    "xorg-server"  # sorta circular (nvidia -> xorg-server -> nvidia); only circular because of nvidia-xconfig
)

EXTRA="https://us.download.nvidia.com/XFree86/Linux-x86_64/$VERS/NVIDIA-Linux-x86_64-$VERS.run"

EXTRACT=1

2b() {

chmod +x "$SRC/NVIDIA-Linux-x86_64-$VERS.run"
kver=$(realpath /usr/src/linux | cut -d- -f2-)
echo "Detected kernel version '$kver'"

_cfg_opts=(
    --silent
    --ui=none
    --no-rpms
    --no-x-check
    --no-peermem
    --no-systemd
    --no-abi-note
    --no-questions
    --x-prefix=/usr
    --disable-nouveau
    --skip-module-load
    --no-nouveau-check
    --no-ncurses-color
    --force-selinux=no
    --kernel-name=$kver
    --run-nvidia-xconfig
    --no-install-libglvnd
    --no-rebuild-initramfs
    --install-compat32-libs
    --kernel-module-type=proprietary
    --no-check-for-alternate-installs
    --kernel-source-path=/usr/src/linux
    --allow-installation-with-running-driver
    --kernel-install-path="$D"/lib/modules/$kver/kernel/drivers/video
)

"$SRC/NVIDIA-Linux-x86_64-$VERS.run" ${_cfg_opts[@]}

# create a dri pkgconfig file for packages expecting one
mkdir -pv "$D"/usr/lib/pkgconfig
cat > "$D"/usr/lib/pkgconfig/dri.pc << EOF
prefix=/usr
includedir=\${prefix}/include

dridriverdir=/usr/lib/dri

Name: dri
Description: Direct Rendering Infrastructure
Version: $VERS
Requires.private: libdrm >= 2.4.109
Cflags: -I\${includedir}
EOF

# blacklist nouveau
cat >> "$D"/etc/modprobe.d/nvfb.conf << "EOF"
# Begin /etc/modprobe.d/nvfb.conf

blacklist nvidiafb
blacklist nouveau

# End /etc/modprobe.d/nvfb.conf
EOF

}
#d destdir hotfix
