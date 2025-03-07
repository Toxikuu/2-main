NAME="2"
VERS="0.0.86"
DESC="Source-based LFS package manager"
CATG="core"
UPST="https://github.com/Toxikuu/2.git"
DEPS=(
    "rust"
    "tar"
    "zstd"
    "bash"
)

SOURCE="https://github.com/Toxikuu/2/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

with rust
cbr

for dir in usr/ports usr/share/2 etc/2 usr/bin; do
    mkdir -pv "$D/$dir"
done

install -vDm644 "$PWD"/completions/bash "$D"/usr/share/bash-completion/completions/2
install -vDm644 "$PWD"/completions/zsh  "$D"/usr/share/zsh/site-functions/_2
install -vDm644 "$PWD"/completions/fish "$D"/usr/share/fish/vendor_completions.d/2.fish

cat << EOF > "$D"/usr/bin/2
#!/usr/bin/env bash

if command -v sudo >/dev/null 2>&1; then
    S=sudo
elif command -v doas >/dev/null 2>&1; then
    S=doas
else
    S=
fi

"\$S" LOG_LEVEL="\$LOG_LEVEL" /usr/share/2/target/release/two "\$@"
EOF

chmod +x "$D/usr/bin/2"

install -vDm755 target/release/two "$D/usr/share/2/target/release/two"
cp -av envs "$D/usr/share/2/envs"

# build documentation if mdbook is installed
if command -v mdbook >/dev/null 2>&1; then
    pushd docs
    mdbook build
    mkdir -pv "$D/usr/share/doc"
    cp -av book "$D/usr/share/doc/2"
    popd
fi

for f in config.toml exclusions.txt repo_priority.txt README.md LICENSE; do
    install -vm644 "$f" "$D/usr/share/2"
done

}