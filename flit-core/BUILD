NAME="flit-core"
VERS="3.10.1"
DESC="Tool for building distributable Python modules"
UPST="https://www.kernel.org/pub/software/scm/git/git-manpages-2.47.1.tar.xz"

SOURCE="https://pypi.org/packages/source/f/flit-core/flit_core-$VERS.tar.gz"
EXTRA=()

2b() {

pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
mkdir -pv D
pip3 install --no-index --no-user --root="$PWD/D" --ignore-installed --find-links dist flit_core

}
