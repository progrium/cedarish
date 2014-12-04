# Cedarish
Heroku "Cedar-ish" Base Image for Docker

[![Circle CI](https://circleci.com/gh/progrium/cedarish.png?style=shield)](https://circleci.com/gh/progrium/cedarish)

This is the source for a Docker image used for environments emulating the Heroku Cedar stacks. It's based on the official [Heroku stack images scripts](https://github.com/heroku/stack-images).

It doesn't include any buildpacks, just the base environment. This allows us to build a separate builder container and runner container. See [Herokuish](https://github.com/gliderlabs/herokuish) for emulating the rest of the Heroku build process.

## Releases

Although the latest release is always available on [Docker Hub](https://registry.hub.docker.com/u/progrium/cedarish/), you can access versioned filesystem [releases](https://github.com/progrium/cedarish/releases) directly. Both a tar and gzipped tar are available. This allows you to ADD the tar directly from custom Dockerfiles, or manually import the gzipped tar for quicker downloads.