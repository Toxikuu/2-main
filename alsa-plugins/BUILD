NAME="alsa-plugins"
VERS="1.2.12"
DESC="ALSA plugins"
UPST="https://github.com/alsa-project/alsa-plugins.git"

SOURCE="https://www.alsa-project.org/files/pub/plugins/alsa-plugins-$VERS.tar.bz2"
EXTRA=()

2b() {

cfg --sysconfdir=/etc --disable-libav
mk
mi

mk distclean

m32=1
cfg --sysconfdir=/etc --disable-libav
mk
mi

}
