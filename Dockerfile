FROM circleci/golang:1.12

ENV HUGO_VERSION '0.58.3'
ENV GO111MODULE  'on'

WORKDIR /go/src/github.com/mattermost/mattermost-developer-documentation

USER root

COPY . .

RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -O hugo.tar.gz && \
    tar -xvf hugo.tar.gz hugo && \
    mv hugo /usr/bin && \
    rm -rf hugo.tar.gz && \
    export PATH=$PATH:bin

RUN make dist

USER circleci
