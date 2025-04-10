NAME="fastfetch"
VERS="2.40.4"
DESC="Well-maintained, feature-rich, performance-oriented fetch script"
UPST="https://github.com/fastfetch-cli/fastfetch.git"

SOURCE="https://github.com/fastfetch-cli/fastfetch/archive/refs/tags/$VERS.tar.gz"
EXTRA=()

2b() {

with cmake

cm -D BUILD_FLASHFETCH=OFF -G "Unix Makefiles"
mk
mi

}