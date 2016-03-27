alpine-sbt-builder
=================

A builder image to build java code with sbt. It's based in alpine-base.

## Build

```
docker build -t rawmind/alpine-sbt-builder:<version> .
```

## Versions

- `0.3.3` [(Dockerfile)](https://github.com/rawmind0/alpine-sbt-builder/blob/master/Dockerfile)

## Usage

To use this image, run it with a build script as a parameter. A build script must have all the commands to build your app.

```
docker run  -t --rm \
       -v <code-path>:/opr/src/<app> \
       alpine-sbt-builder:<version> ./build.sh"
```

