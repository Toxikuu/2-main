NAME="vala"
VERS="0.56.18"
DESC="Compiler for the GObject type system"
CATG="lang"
UPST="https://github.com/GNOME/vala.git"
VCMD="git ls-remote --tags --refs $UPST | sed -e 's@.*/@@' -e 's@_@.@g' | cut -d. -f1- | grep -Ev '[a-Z]|0.57.0' | sort -V | tail -n1"
# GNOME decided to create a tag for vala called 0.57.0, which hasn't seen any
# commits in three years. What the fuck GNOME? At time of writing, the latest
# version of vala is 0.56.18, with commits dating back to two weeks ago.
# Genuinely, what the fuck is this versioning scheme??? Ok, rant over.
DEPS=(
    "glib"
    "o^graphviz" # for valadoc
)

SOURCE="https://download.gnome.org/sources/vala/${VERS%.*}/vala-$VERS.tar.xz"
EXTRA=()

2b() {

# remove the cfg flag if valadoc is wanted
cfg --disable-valadoc
mk
mi

}
#d fixed the vcmd
