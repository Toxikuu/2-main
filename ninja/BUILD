NAME="ninja"
VERS="1.12.1"
DESC="A small build system with a focus on speed"
UPST="https://github.com/ninja-build/ninja.git"

SOURCE="https://github.com/ninja-build/ninja/archive/v$VERS/ninja-$VERS.tar.gz"
EXTRA=()

2b() {

sed -i '/int Guess/a \
  int   j = 0;\
  char* jobs = getenv( "NINJAJOBS" );\
  if ( jobs != NULL ) j = atoi( jobs );\
  if ( j > 0 ) return j;\
' src/ninja.cc

python3 configure.py --bootstrap

install -vDm755 ninja "$D"/usr/bin/ninja
install -vDm644 misc/bash-completion "$D"/usr/share/bash-completion/completions/ninja
install -vDm644 misc/zsh-completion  "$D"/usr/share/zsh/site-functions/_ninja

}
