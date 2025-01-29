NAME="alsa-plugins"
VERS="1.2.12"
DESC="ALSA plugins"
UPST="https://github.com/alsa-project/alsa-plugins.git"

SOURCE="https://www.alsa-project.org/files/pub/plugins/alsa-plugins-$VERS.tar.bz2"
EXTRA=()

2b() {

DS=1 b-cfg --sysconfdir=/etc --disable-libav
b-make
b-mi

b-make distclean

DS=1 b-32cfg --sysconfdir=/etc --disable-libav
b-make
b-32mi

}
