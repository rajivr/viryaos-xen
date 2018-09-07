# viryaos-xen for v3.7

This directory has two docker files which is used to build and create an image
of `viryaos-xen`.

```
$ cd viyaos-xen

$ docker build --squash -t viryaos-xen-builder .
```

Once the image is built, running the image with `run` script, would generate
`viryaos-xen.tar.gz` in `/tmp` directory.

```
$ cd viyaos-xen

$ docker run --rm -ti -v /tmp:/tmp -v $(pwd):/root/src \
    viryaos-xen-builder /root/src/run
```

`viryaos-xen.tar.gz` contains the xen build for `x86_64`.

Once `viryaos-xen.tar.gz` is built, it can be packaged as a docker image for
downstream use. This can be done using `Dockerfile.image`.

```
(inside viryaos-xen directory)

$ git rev-parse --short HEAD
```

To build the docker image

```
$ cd viryaos-xen

$ cp /tmp/viryaos-xen.tar.gz .

$ docker build -f Dockerfile.image --squash \
    -t viryaos/viryaos-xen:<VERSION>-<SHORT_SHA>-<ARCH1>.<ARCH2> .

(For example)

$ docker build -f Dockerfile.image --squash \
    -t viryaos/viryaos-xen:v3.7-abcdef1-x86_64 .
```
