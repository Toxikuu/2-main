NAME="libplacebo"
VERS="7.349.0"
DESC="Reusable library for GPU-accelerated video/image rendering primitives"
CATG="lib img video"
UPST="https://github.com/haasn/$NAME.git"
DEPS=(
    "ffmpeg"
    "glad"
    "glslang"
    "vulkan-loader"
    "o^little-cms"
    "o^libunwind"
    "o^xxhash"
)

SOURCE="https://github.com/haasn/$NAME/archive/v$VERS/$NAME-$VERS.tar.gz"
EXTRA=()

2b() {

with meson ninja

# avoid a build failure with glslang=15.0.0
sed -e "20s/$/,/"                                         \
    -e "21i cxx.find_library('glslang', required: false)" \
    -i src/glsl/meson.build

ms -D tests=false -D demos=false
nj
ni

}
