NAME="libunwind"
VERS="1.8.1"
DESC="C API to determine the call-chain of a program"
UPST="https://github.com/libunwind/libunwind.git"

SOURCE="https://github.com/libunwind/libunwind/releases/download/v$VERS/libunwind-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi

b-make clean

b-32cfg
b-make

DIRS=/usr/include/libunwind-x86.h b-32mi # array syntax fucking sucks

}
