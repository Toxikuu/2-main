NAME="lame"
VERS="3.100"
DESC="High quality MP3 encoder"
CATG="audio"
UPST="https://sourceforge.net/projects/lame/files/"
VCMD="curl -s '$UPST' | grep lame- | cut -d- -f6 | cut -d. -f1-2"
DEPS=()

SOURCE="https://downloads.sourceforge.net/lame/lame-$VERS.tar.gz"
EXTRA=()

2b() {

# avoid hardcoding the source code directory
sed -i -e 's/^\(\s*hardcode_libdir_flag_spec\s*=\).*/\1/' configure

cfg --enable-mp3rtp
mk
mi

}
