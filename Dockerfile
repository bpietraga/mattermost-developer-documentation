FROM circleci/golang:1.12

ENV HUGO_VERSION '0.58.3'
ENV GO111MODULE  'on'

WORKDIR /usr/local/mattermost-developer-documentation

USER root

COPY . .

RUN git clone https://github.com/mattermost/mattermost-server /go/src/github.com/mattermost/mattermost-server

RUN export PATH=$PATH:$(go env GOPATH)/bin && \
    export GOPATH=$(go env GOPATH) && \
    wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -O hugo.tar.gz && \
    tar -xvf hugo.tar.gz hugo && \
    mv hugo /usr/bin && \
    rm -rf hugo.tar.gz && \
    export PATH=$PATH:bin

RUN make dist

USER circleci
