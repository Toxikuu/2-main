NAME="libusb"
VERS="1.0.27"
DESC="Library for USB device access"
CATG="lib"
UPST="https://github.com/libusb/libusb.git"
DEPS=()

SOURCE="https://github.com/libusb/libusb/releases/download/v$VERS/libusb-$VERS.tar.bz2"
EXTRA=()

KCFG=(
    "USB_SUPPORT=*"
    "USB=*/M"
    "USB_PCI=*"
    "USB_XHCI_HCD=*/M"
    "USB_EHCI_HCD=*/M"
)

2b() {

cfg
mk
mi

}
