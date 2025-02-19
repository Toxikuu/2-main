NAME="efibootmgr"
VERS="18"
DESC="User-space application to modify the EFI Boot Manager"
UPST="https://github.com/rhboot/efibootmgr.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E '^[0-9]+$' | tail -n1"
DEPS=(
    "efivar"
    "popt"
)

SOURCE="https://github.com/rhboot/efibootmgr/archive/$VERS/efibootmgr-$VERS.tar.gz"
EXTRA=()

2b() {

mk EFIDIR=LFS EFI_LOADER=tox64.efi
mi EFIDIR=LFS

}