# viryaos-xen-aarch64

## `Dockerfile.image`

```
$ cd viryaos-xen-aarch64/

$ docker build --force-rm --squash --file Dockerfile.image -t viryaos-xen-aarch64 .
```

## `/vos_run`

Go to the directory containing `ViryaOS` tree.

```
$ docker run --rm -ti -v $(pwd):/home/builder/src \
    viryaos-xen-aarch64 /vos_run
```

## `Dockerfile.package`

```
$ cd viryaos-xen-aarch64

$ docker build --force-rm --squash --file Dockerfile.package -t viryaos-xen-aarch64-package .
```
