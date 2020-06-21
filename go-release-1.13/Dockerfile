
FROM golang:1.13

RUN apt-get update && \
    apt-get install -y curl jq git

COPY run.sh /run.sh

ENV GOBIN /go/bin

ENTRYPOINT ["/run.sh"]
