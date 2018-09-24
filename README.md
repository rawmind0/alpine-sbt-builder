alpine-sbt-builder
=================

A builder image to build java code with sbt. It comes from [alpine-jvm8][alpine-jvm8].

## Build

```
docker build -t rawmind/alpine-sbt-builder:<version> .
```

## Versions

- `0.13.11-4` [(Dockerfile)](https://github.com/rawmind0/alpine-sbt-builder/blob/0.13.11-4/Dockerfile)
- `0.13.11-2` [(Dockerfile)](https://github.com/rawmind0/alpine-sbt-builder/blob/0.13.11-2/Dockerfile)

## Usage

To use this image, run it with a build script as a parameter. A build script must have all the commands to build your app.

```
docker run  -t --rm \
       -v <code-path>:/opr/src/<app> \
       alpine-sbt-builder:<version> ./build.sh"
```

[alpine-jvm8]: https://github.com/rawmind0/alpine-jvm8/