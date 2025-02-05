### WARNING
# THIS SCRIPT IS VERY EARLY IN DEVELOPMENT; USE AT YOUR OWN RISK
### WARNING

# TODO: Make a more generic kernel config

NAME="kernel"
VERS="6.13.1"
DESC="The Linux kernel"
VCMD="curl -s 'https://kernel.org' | grep linux- | head -n1 | cut -d'>' -f2 | cut -d'<' -f1"
UPST="https://kernel.org"

SOURCE="https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-$VERS.tar.gz"
EXTRA=()

EXTRACT=1

2b() {

kver=$(realpath /usr/src/linux | cut -d'=' -f2-)

reuse_build() {
    ln -sv /usr/src/linux "$BLD/build"
    cd "$BLD/build"
    [ -e .config ] || die 'Missing kernel config! :(('

    b-make olddefconfig
    b-make
    b-make modules_install INSTALL_MOD_PATH="$D"
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
    cd "$BLD/build"
    cp -vf "$PORT"/kernelconfig .config

    b-make olddefconfig
    b-make
    b-make modules_install INSTALL_MOD_PATH="$D"
    mkdir -pv "$D"/boot

    cp -vf arch/x86/boot/bzImage "$D"/boot/vmlinuz-$VERS-two
    cp -vf System.map "$D"/boot/System.map-$VERS
    cp -vf .config "$D"/boot/config-$VERS
}

fresh_build

# if [ -z "$kver" ]; then
#     fresh_build
# else
#     reuse_build
# fi

}

2z() {
    echo "The kernel has been compiled and installed to /boot" >&2
    echo "You must now specify it in your bootloader or whatever" >&2
    sleep 0.02 # i have no idea why the commands dont execute in order here :sob:
    echo "Also, if you use nvidia's drivers, you're gonna wanna rebuild those"
}

