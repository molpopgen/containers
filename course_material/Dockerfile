FROM quay.io/fedora/fedora:40

# NOTE: the resulting image is intended
# to be used in an interactive setting
# such as distrobox.
# Some of the installed packages are things
# that I use.
# distrobox respects your dotfiles but you
# need your favorite tools visible to the box.

WORKDIR /app
COPY . /app

RUN dnf install -y dnf-plugins-core \
    && dnf copr enable -y atim/starship \
    && dnf install -y R \
    R-devtools \
    pandoc \
    gh \
    kitty \
    fuse \
    openssh-clients \
    inkscape \
    ghostscript \
    graphviz \
    zsh \
    texlive-luatex \
    texlive-xetex \
    'mozilla-fira-*' \
    evince \
    starship \
# Specific *tex dependencies b/c Fedora 
# packages things separately
    texlive-a4wide \
    texlive-eurosym \
    texlive-xargs \
    texlive-pgfopts \
    texlive-wasysym \
    texlive-wasy \
    texlive-multirow \
    texlive-wrapfig \
    texlive-tabu \
    texlive-threeparttable \
    texlive-threeparttablex \
    texlive-ulem \
    texlive-makecell \
    texlive-standalone \
    texlive-genealogytree \
    texlive-tikzfill \
    tex-preview \
    texlive-luatex85 \
    texlive-pgfmolbio \
# Python stuff needed
    python3-pip \
# Compilation dependencies for R packages:
    ImageMagick-c++-devel \
    libjpeg-turbo-devel \
    poppler-cpp-devel \
    libcurl-devel \
    && dnf clean all \
    && R --quiet --no-save < install_packages.R
