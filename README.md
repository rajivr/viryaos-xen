# viryaos-xen

## `Dockerfile.image`

```
$ cd viryaos-xen/

$ docker build --force-rm --squash --file Dockerfile.image -t viryaos-xen .
```

## `/vos_run`

Go to the directory containing `ViryaOS` tree.

```
$ docker run --rm -ti -v $(pwd):/home/builder/src \
    viryaos-xen /vos_run
```

## `Dockerfile.package_tools`

```
$ cd viryaos-xen

$ docker build --force-rm --squash --file Dockerfile.package_tools \
    -t viryaos-xen-package-tools .
```

## `Dockerfile.package_boot`

```
$ cd viryaos-xen

$ docker build --force-rm --squash --file Dockerfile.package_boot \
    -t viryaos-xen-package-boot .
```
