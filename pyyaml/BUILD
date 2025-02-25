NAME="pyyaml"
VERS="6.0.2"
DESC="Python YAML parser and emitter"
CATG="dev"
UPST="https://github.com/yaml/pyyaml.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -v '[a-z]' | tail -n1"
DEPS=(
    "cython"
    "libyaml"
)

SOURCE="https://files.pythonhosted.org/packages/source/P/PyYAML/pyyaml-$VERS.tar.gz"
EXTRA=()

2b() {

with pip

pipb
pipi PyYAML

}
