FROM ubuntu:24.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    pandoc \
    texlive-xetex \
    texlive-lang-chinese \
    texlive-fonts-recommended \
    texlive-science \
    texlive-latex-extra \
    texlive-extra-utils \
    texlive-fonts-extra \
    fonts-noto-cjk \
    fonts-noto-cjk-extra \
    lmodern \
    tex4ht \
    dvisvgm \
    python3 \
    make \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /book
