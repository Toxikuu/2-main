NAME="kernel"
VERS="6.13.6"
DESC="The Linux kernel"
VCMD="curl -s 'https://kernel.org' | grep linux- | head -n1 | cut -d'>' -f2 | cut -d'<' -f1"
UPST="https://kernel.org"
CATG="critical core"

SOURCE="https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-$VERS.tar.gz"
EXTRA=()

EXTRACT=1

2b() {

kver=$(realpath /usr/src/linux | cut -d- -f2-)

reuse_build() {
    ln -sv /usr/src/linux "$BLD/build"
    cd "$BLD/build"
    [ -e .config ] || die 'Missing kernel config! :(('

    mk olddefconfig
    mk
    mk modules_install INSTALL_MOD_PATH="$D"
    mkdir -pv "$D"/boot

    cp -vf arch/x86/boot/bzImage "$D"/boot/vmlinuz-$VERS-two
    cp -vf System.map "$D"/boot/System.map-$VERS
    cp -vf .config "$D"/boot/config-$VERS
}

fresh_build() {
    rm -rf "/usr/src/linux-$VERS" # prevent some dumb shit from happening
    tar xf "$SRC/kernel=$VERS.tar."*z*  \
      -C /usr/src                       \
      --checkpoint=4096                 \
      --checkpoint-action='echo="#%u: %T"'

    rm -rf "/usr/src/linux" # prevent more dumb shit from happening
    ln -sfv "/usr/src/linux-$VERS" "/usr/src/linux"

    ln -sv "/usr/src/linux" "$BLD/build"
    sleep 0.1 # fucking why dude
    cd "$BLD/build"
    cp -vf "$PORT"/kernelconfig .config

    mk olddefconfig
    mk
    mk modules_install INSTALL_MOD_PATH="$D"
    mkdir -pv "$D"/boot

    cp -vf arch/x86/boot/bzImage "$D"/boot/vmlinuz-$VERS-two
    cp -vf System.map "$D"/boot/System.map-$VERS
    cp -vf .config "$D"/boot/config-$VERS
}

if [[ "$kver" == "$VERS" ]]; then
    reuse_build
else
    fresh_build
fi

}

2z() {
    warn "The kernel has been compiled and installed to /boot. You must now specify it in your bootloader or whatever. Also, if you use nvidia drivers, you're gonna wanna rebuild those."
}