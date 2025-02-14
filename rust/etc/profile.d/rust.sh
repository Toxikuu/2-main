#!/usr/bin/env bash
# Begin /etc/profile.d/rust.sh

export CARGO_HOME="/opt/cargo"
export RUSTUP_HOME="/opt/rustup"
pathprepend "\$CARGO_HOME/bin"

# End /etc/profile.d/rust.sh
