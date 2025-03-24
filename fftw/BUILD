NAME="fftw"
VERS="3.3.10"
DESC="Library for computing the discrete Fourier transform"
CATG="lib math"
UPST="https://github.com/FFTW/fftw3.git"
DEPS=()

SOURCE="http://fftw.org/fftw-$VERS.tar.gz"
EXTRA=()

2b() {

# Note: FFTW is built thrice for different optimizations

_cfg_opts=(
    --enable-shared
    --enable-threads
    --enable-sse2
    --enable-avx
    --enable-avx2
)

cfg ${_cfg_opts[@]}
mk
mi

mk clean

cfg ${_cfg_opts[@]} --enable-float
mk
mi

mk clean

# sse2 and avx* are incompatible with long-double
cfg --enable-shared --enable-threads --enable-long-double
mk
mi

}
