FROM ubuntu:24.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    pandoc \
    texlive-xetex \
    texlive-lang-chinese \
    texlive-fonts-recommended \
    texlive-science \
    texlive-latex-extra \
    fonts-noto-cjk \
    fonts-noto-cjk-extra \
    lmodern \
    librsvg2-bin \
    make \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /book
