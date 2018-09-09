FROM arm64v8/alpine:3.7

COPY qemu-aarch64-static /usr/bin/qemu-aarch64-static

RUN \
    apk update && \
# Xen build deps
    apk add gcc patch musl-dev git python2-dev gettext zlib-dev \
	ncurses-dev dev86 texinfo yajl-dev curl-dev libaio-dev autoconf \
	automake iasl make xz-dev bash util-linux-dev argp-standalone \
	linux-headers curl libfdt dtc-dev

ENTRYPOINT ["/bin/sh"]
