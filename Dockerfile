FROM ubuntu:24.04

# ── System & TeX packages ──────────────────────────────────────────────────
# Excluded intentionally (saves ~2.1 GB):
#   texlive-fonts-extra  1 691 MB  → only fontawesome5 needed; vendored below
#   fonts-noto-cjk-extra  209 MB  → SC glyphs already in fonts-noto-cjk
#   pandoc                207 MB  → pipeline is now pure LaTeX, no Markdown
RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-xetex \
    texlive-lang-chinese \
    texlive-fonts-recommended \
    texlive-science \
    texlive-latex-extra \
    texlive-extra-utils \
    fonts-noto-cjk \
    lmodern \
    tex4ht \
    dvisvgm \
    python3 \
    make \
    && rm -rf /var/lib/apt/lists/*

# ── fontawesome5 vendored (~1.4 MB, replaces texlive-fonts-extra 1 691 MB) ─
# Fonts extracted from texlive-fonts-extra and committed to vendor/ so the
# build requires no network access.  Only needed for PDF/XeLaTeX output;
# HTML mode uses text fallbacks (see \ifdefined\HCode in preamble/packages.tex).
COPY vendor/fontawesome5/ /usr/share/texlive/texmf-dist/
RUN mktexlsr

WORKDIR /book
