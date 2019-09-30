FROM docker:stable

LABEL "name"="Docker Action"
LABEL "maintainer"="Yeongjin Lee <yeongjinnn@gmail.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Docker Action"
LABEL "com.github.actions.description"="GitHub Actions for build and publish Docker Image"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git bash

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
