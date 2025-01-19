### WARNING
# THIS SCRIPT IS VERY EARLY IN DEVELOPMENT; DO NOT USE IT
### WARNING

# TODO: Move this to tox/ and provide stabler defaults here
# TODO: Test this

NAME="kernel"
VERS="6.12.10"
DESC="The Linux kernel"
UPST="https://kernel.org"
VCMD="curl -s 'https://kernel.org' | grep linux- | head -n1 | cut -d'>' -f2 | cut -d'<' -f1"

SOURCE="https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-$VERS.tar.gz"
EXTRA=()

EXTRACT=1

2b() {

kver=$(realpath /usr/src/linux | cut -d'=' -f2-)

reuse_build() {

    ln -sv /usr/src/linux "$BLD/build"
    cd "$BLD/build"

    b-make olddefconfig
    b-make
    b-make modules_install INSTALL_MOD_PATH="$D"
    mkdir -pv "$D"/{efi,boot}

    cp -vf arch/x86/boot/bzImage "$D"/boot/vmlinuz-$VERS-two
    cp -vf System.map "$D"/boot/System.map-$VERS
    cp -vf .config "$D"/boot/config-$VERS
    cp -vf "$D"/boot/vmlinuz-$VERS-two "$D"/efi/tox64.efi

}

# THE BELOW IS NOT YET TESTED
clean_build() {

    tar xf "$SRC/kernel=$VERS.tar."*z* -C /usr/src --checkpoint=4096 --checkpoint-action='echo="#%u: %T"'
    mv -vf /usr/src/linux{-,'='}$VERS 

    ln -sv "/usr/src/linux=$VERS" "$BLD/build"

    cd "$BLD/build"

    cp -vf "$PORT"/kernelconfig .config
    b-make olddefconfig
    b-make
    b-make modules_install INSTALL_MOD_PATH="$PWD/D"
    mkdir -pv D/{efi,boot}

    cp -vf arch/x86/boot/bzImage D/boot/vmlinuz-$VERS-two
    cp -vf System.map D/boot/System.map-$VERS
    cp -vf .config D/boot/config-$VERS
    cp -vf D/boot/vmlinuz-$VERS-two D/efi/tox64.efi

    rm -vf /usr/src/linux || die "/usr/src/linux should be a symlink to /usr/src/linux-$kver"
    cp -Rv "$BLD/build" "/usr/src/linux=$VERS"
    ln -sv linux "/usr/src/linux=$VERS"

}

if [ -z "$kver" ]; then
    clean_build
else
    reuse_build
fi

}
