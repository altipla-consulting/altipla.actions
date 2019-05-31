
FROM golang:1.12

LABEL "com.github.actions.name"="Go Release Binary"
LABEL "com.github.actions.description"="Automate publishing Go build artifacts for GitHub releases."
LABEL "com.github.actions.icon"="cpu"
LABEL "com.github.actions.color"="orange"
LABEL "repository"="http://github.com/altipla-consulting/altipla.actions/go-release"

RUN apt-get update && \
    apt-get install -y curl jq git

COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]
