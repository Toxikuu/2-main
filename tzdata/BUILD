NAME="tzdata"
VERS="2025b"
DESC="Timezone data"
UPST="https://data.iana.org/time-zones/releases/?C=M;O=D"
VCMD="curl -s 'https://data.iana.org/time-zones/releases/?C=M;O=D' | grep tzdb- | head -n1 | cut -d- -f2 | cut -d. -f1"

SOURCE="https://data.iana.org/time-zones/releases/tzdata"$VERS".tar.gz"
EXTRA=()

DEPS="glibc"
EXTRACT=1

2b() {

TZ=America/New_York

cp -vf "$SRC"/tzdata"=$VERS".tar.gz .
tar xvf tzdata"=$VERS".tar.gz

ZONEINFO="$D"/usr/share/zoneinfo
mkdir -pv "$ZONEINFO"/{posix,right}

for tz in etcetera southamerica northamerica europe africa antarctica  \
          asia australasia backward; do
    zic -L /dev/null   -d "$ZONEINFO"       "$tz"
    zic -L /dev/null   -d "$ZONEINFO"/posix "$tz"
    zic -L leapseconds -d "$ZONEINFO"/right "$tz"
done

cp -v zone.tab zone1970.tab iso3166.tab "$ZONEINFO"
zic -d "$ZONEINFO" -p "$TZ"
unset ZONEINFO

}

2z() {

TZ=${TZ:-$(curl -s https://ipinfo.io | grep timezone | cut -d '"' -f4 || echo 'America/New_York')}

ln -sfv /usr/share/zoneinfo/"$TZ" /etc/localtime
warn "Set timezone to $TZ."
# TODO: Move system configuration variables to /etc/2/sysconf.toml

}