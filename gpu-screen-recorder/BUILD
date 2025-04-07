NAME="gpu-screen-recorder"
VERS="5.3.8"
DESC="Fastest screen recorder for Linux"
CATG="rec cli"
UPST="https://repo.dec05eba.com/gpu-screen-recorder"
DEPS=(
    "ffmpeg"
    "libglvnd"
    "libxcomposite"
    "libxrandr"
    "libxfixes"
    "libxdamage"
    "libx11"
    "pulseaudio"
    "libva"
    "libdrm"
    "libcap"
    "wayland"
    "vulkan-headers"
    "o^mesa"

    # for -D portal=true
    "o^dbus"
    "o^libpipewire"

    # nvidia (runtime)
    "o^nvidia"
    "o^nvenc"
    "o^cuda"
    "o^nvfbc"
)

EXTRA="https://dec05eba.com/snapshot/$NAME.git.$VERS.tar.gz" # messy extraction

2b() {

with meson ninja

tar xf "$SRC"/$NAME.git.$VERS.tar.gz
tpatch "$PORT"/cqp.patch

_cfg_opts=(
    -D systemd=false
    -D cqp_ultra=15
    -D cqp_vhigh=20
    -D cqp_high=25
    -D cqp_med=30
    $([[ -e /var/ports/main/pipewire/.data/INSTALLED ]] || echo -D portal=false -D app_audio=false)
)

ms ${_cfg_opts[@]}
nj
ni

}