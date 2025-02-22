NAME="mako"
VERS="1.3.9"
DESC="Hyperfast, lightweight Python templating"
CATG="dev"
UPST="https://github.com/sqlalchemy/mako.git"
VCMD="git ls-remote '$UPST' | sed -e 's@.*/@@' -e 's|_|.|g' | tail -n1 | cut -d. -f2-"
DEPS=(
    "python"
    "setuptools"
    "wheel"
    "markupsafe"
)

SOURCE="https://github.com/sqlalchemy/mako/archive/refs/tags/rel_${VERS//./_}.tar.gz"
EXTRA=()

2b() {
  
with pip

pipb
pipi "$NAME"

}
