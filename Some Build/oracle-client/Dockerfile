# Base image
FROM docker.io/alpine:latest

# Maintainer
LABEL maintainer="hoanbc@outlook.com"

# Update package lists and install some component
RUN apk update && apk add --update wget bash jq openjdk11

# Download the file to /usr/local/bin
RUN wget -O jdbc-tester-1.1.jar  https://github.com/aimtiaz11/oracle-jdbc-tester/releases/download/v1.1/jdbc-tester-1.1.jar && chmod +x jdbc-tester-1.1.jar && mv jdbc-tester-1.1.jar /opt

# Keep container running
ENTRYPOINT ["tail", "-f", "/dev/null"]
