NAME="efibootmgr"
VERS="18"
DESC="User-space application to modify the EFI Boot Manager"
UPST="https://github.com/rhboot/efibootmgr.git"
DEPS=(
    "efivar"
    "popt"
)

SOURCE="https://github.com/rhboot/efibootmgr/archive/18/efibootmgr-18.tar.gz"
EXTRA=()

2b() {

b-make EFIDIR=LFS EFI_LOADER=tox64.efi
b-mi EFIDIR=LFS

}
