# Base image
FROM docker.io/alpine:latest

# Maintainer
LABEL maintainer="hoanbc@outlook.com"

# Environment
ENV dest_curl https://httpbin.org/post 

# Update package lists and install some component
RUN apk update && apk add --update curl bash jq

# Copy and set permission file scripts
COPY files/scripts.sh .
RUN chmod +x /scripts.sh

# Run a command when the container starts
CMD ["/scripts.sh"]
