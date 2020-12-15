FROM alpine:latest

ENV STARRED_VERSION="3.1.0"

RUN apk add --no-cache \
  python3 \
  py3-pip \
  py3-cryptography \
  py3-cffi \
  py3-asn1crypto

RUN pip3 install \
  --no-cache-dir \
  --disable-pip-version-check \
  --no-compile \
  starred>=${STARRED_VERSION}

CMD []
ENTRYPOINT []
HEALTHCHECK NONE
