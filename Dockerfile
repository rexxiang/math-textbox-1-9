FROM ghcr.io/typst/typst:0.14.2

RUN apk add --no-cache font-noto-cjk

WORKDIR /book
ENTRYPOINT ["typst"]
