# Cedarish
Heroku "Cedar-ish" Base Image for Docker

[![Circle CI](https://circleci.com/gh/progrium/cedarish.png?style=shield)](https://circleci.com/gh/progrium/cedarish)

This is the source for a Docker image used for environments emulating the Heroku Cedar stacks. It's based on the official [Heroku stack images scripts](https://github.com/heroku/stack-images).

It doesn't include any buildpacks, just the base environment. This allows us to build a separate builder container and runner container. See [Herokuish](https://github.com/gliderlabs/herokuish) for emulating the rest of the Heroku build process.

## Releases

Although the latest release is always available on [Docker Hub](https://registry.hub.docker.com/u/progrium/cedarish/), you can access versioned filesystem [releases](https://github.com/progrium/cedarish/releases) directly. Both a tar and gzipped tar are available. This allows you to ADD the tar directly from custom Dockerfiles, or manually import the gzipped tar for quicker downloads (`docker import <release-url> progrium/cedarish`).

## Contributing

As usual, pull requests are welcome. You can also propose releases by opening a PR against the release branch from master. Please be sure to bump the version and update CHANGELOG.md and include your changelog text in the PR body.

Discuss cedarish development with us on Freenode in #gliderlabs.
