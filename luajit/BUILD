NAME="luajit"
VERS="e0a7ea8a924d8137e6950b97c3e36f17264f6c79"
DESC="Just-In-Time Lua compiler"
CATG="lang"
UPST="https://github.com/LuaJIT/LuaJIT.git"
DEPS=()

SOURCE="https://github.com/LuaJIT/LuaJIT/archive/$VERS.tar.gz"
EXTRA=()

2b() {

mk PREFIX=/usr amalg
mi PREFIX=/usr

rm -vf "$D"/usr/lib/libluajit-*.a

}