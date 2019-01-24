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

## `Dockerfile.package_tools`

```
$ cd viryaos-xen-aarch64

$ docker build --force-rm --squash --file Dockerfile.package_tools \
    -t viryaos-xen-aarch64-package-tools .
```

## `Dockerfile.package_boot`

```
$ cd viryaos-xen-aarch64

$ docker build --force-rm --squash --file Dockerfile.package_boot \
    -t viryaos-xen-aarch64-package-boot .
```
