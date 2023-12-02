# Base image
FROM nginxinc/nginx-unprivileged:latest 

# Maintainer
LABEL maintainer="hoanbc@outlook.com"

# Copy file nginx.conf
USER root
COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/conf.d/ /etc/nginx/conf.d
COPY files/ssl /etc/nginx/ssl
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN chown -R  nginx:nginx /etc/nginx/
RUN mkdir  /tmp/logs
RUN chown -R  nginx:nginx /tmp/logs
USER nginx
