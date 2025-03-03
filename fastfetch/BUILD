NAME="fastfetch"
VERS="2.38.0"
DESC="Well-maintained, feature-rich, performance-oriented fetch script"
UPST="https://github.com/fastfetch-cli/fastfetch.git"

SOURCE="https://github.com/fastfetch-cli/fastfetch/archive/refs/tags/$VERS.tar.gz"
EXTRA=()

2b() {

with cmake

cm
cmake --build . --target fastfetch
install -vDm755 fastfetch "$D"/usr/bin/fastfetch

}