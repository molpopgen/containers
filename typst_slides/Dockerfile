# NOTE: the resulting image is intended
# to be used in an interactive setting
# such as distrobox.
# Some of the installed packages are things
# that I use.
# distrobox respects your dotfiles but you
# need your favorite tools visible to the box.

FROM quay.io/fedora/fedora:42 AS build

WORKDIR /app
COPY . /app

RUN dnf install -y dnf-plugins-core cc openssl-devel rustup && \
    rustup-init -y && \
    . "$HOME/.cargo/env" \
    rustup toolchain install stable && \
    cargo install --target-dir /app --locked typst-cli@0.13.1 && \
    cp "$HOME/.cargo/bin/typst" /app/typst

FROM quay.io/fedora/fedora:42

WORKDIR /app
COPY --from=build /app/typst /usr/local/bin/typst

RUN typst

