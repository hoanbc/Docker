# Base image
FROM docker.io/alpine:latest

# Environment variables
ENV AVP_VERSION="1.16.1"

# Maintainer
LABEL maintainer="hoanbc@outlook.com"

# Update package lists and install some component
RUN apk update && apk add --update wget bash jq jsonnet

# Download the file to /usr/local/bin
RUN wget -O argocd-vault-plugin  https://github.com/argoproj-labs/argocd-vault-plugin/releases/download/v${AVP_VERSION}/argocd-vault-plugin_${AVP_VERSION}_linux_amd64 && chmod +x argocd-vault-plugin &&  mv argocd-vault-plugin /usr/local/bin
RUN wget -O helm  https://mirror.openshift.com/pub/openshift-v4/clients/helm/latest/helm-linux-amd64 && chmod +x helm && mv helm /usr/local/bin

# Run a command when the container starts
CMD ["/bin/sh"]
