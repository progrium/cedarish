# Cedar-ish
Heroku Cedar-ish Base Image for Docker

This is the source for a Docker image to be used for environments emulating the Heroku Cedar stack. It's sort of a mashup of the official [cedar.sh](https://github.com/heroku/stack-images/blob/master/bin/cedar.sh) Heroku uses, and the prepare script of [Buildstep](https://github.com/progrium/buildstep). 

It doesn't include any buildpacks, just the base environment. This allows us to build a separate builder container and runner container.