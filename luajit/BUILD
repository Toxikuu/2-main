NAME="luajit"
VERS="538a82133ad6fddfd0ca64de167c4aca3bc1a2da"
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
