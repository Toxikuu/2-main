NAME="alsa-utils"
VERS="1.2.13"
DESC="ALSA utilities"
UPST="https://github.com/alsa-project/alsa-utils.git"

SOURCE="https://www.alsa-project.org/files/pub/utils/alsa-utils-$VERS.tar.bz2"
EXTRA=()

2b() {

tsed -e 's/acp-pdm-dmic/acp-dmic-codec/'                   \
     -e '/LABEL="alsa_restore_go"/s/go/std/'               \
     -e '/^ENV.ALSA_CARD_NUMBER/i LABEL="alsa_restore_go"' \
     -i alsactl/90-alsa-restore.rules.in

cfg \
    --disable-alsaconf  \
    --disable-bat       \
    --disable-xmlto     \
    --with-curses=ncursesw
mk
mi

}

2z() {

alsactl init &&
alsactl -L store || true

}
