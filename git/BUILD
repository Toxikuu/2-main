NAME="git"
VERS="2.49.0"
DESC="The fast distributed version control system"
UPST="https://github.com/git/git.git"

SOURCE="https://www.kernel.org/pub/software/scm/git/git-$VERS.tar.xz"
EXTRA=(
    "https://www.kernel.org/pub/software/scm/git/git-manpages-$VERS.tar.xz"
)

2b() {

PV=$(cat "$PORT"/../perl/.data/INSTALLED)
[ -z "$PV" ] && die "git depends on perl"

cfg \
    --with-python=python3 \
    --with-gitconfig=/etc/gitconfig

mk
mi perllibdir=/usr/lib/perl${PV%.*.*}/${PV%.*}/site_perl

mkdir -pv "$D"/usr/share/man
tar xvf "$SRC"/git-manpages-$VERS.tar.xz \
    -C "$D"/usr/share/man --no-same-owner --no-overwrite-dir

}