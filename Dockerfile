FROM golang:1.13.4-alpine3.10

ENV HUGO_VERSION '0.58.3'
ENV GO111MODULE  'on'

WORKDIR /go/src/github.com/mattermost/mattermost-developer-documentation

RUN echo $GOPATH

RUN apk update && \
    apk add git gcc libc-dev tar make

COPY . .
RUN mkdir bin && \
    wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -O /tmp/hugo.tar.gz && \
    tar -xvf /tmp/hugo.tar.gz hugo && mv hugo bin && \
    export PATH=$PATH:bin && \
    mkdir vendor && \
    make dist
