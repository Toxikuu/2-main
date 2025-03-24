# It is highly recommended you copy this to your own repo and apply whatever
# patches you desire in $PORT/patches and supply your own config in
# $PORT/config.def.h or $PORT/config.h
#
# Instructions assume this is done, but will work regardless.
NAME="st"
VERS="0.9.2"
DESC="Suckless terminal emulator"
CATG="gui term"
UPST="git://git.suckless.org/st"
DEPS=(
    "libxft"
)

SOURCE="https://dl.suckless.org/st/st-$VERS.tar.gz"
EXTRA=()

2b() {

sed -i config.mk \
    -e '/X11INC = /s@/usr/X11R6/include@/usr/include/X11@'  \
    -e '/X11LIB = /s@/usr/X11R6/lib@/usr/lib@'              \
    -e '/PREFIX = /s@/local@@'

# Apply all patches
#
# Though you could put them in "$SRC", that runs the risk of applying outdated
# patches if "$SRC" is not pruned every now and then, so $PORT is used. Feel
# free to change this though.
for p in "$PORT"/patches/*; do
    tpatch "$p"
done

# Allow custom config.def.h
[[ -e "$PORT"/config.def.h ]] && cp -vf "$PORT"/config.def.h .

# Allow custom config.h
[[ -e "$PORT"/config.h ]] && cp -vf "$PORT"/config.h .

mi clean  # roughly desugars to ``make DESTDIR="$D" clean install``

}
