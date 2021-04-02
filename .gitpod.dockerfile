FROM gitpod/workspace-full:latest

# optional: use a custom Nginx config.
COPY nginx.conf /etc/nginx/nginx.conf

# optional: change document root folder. It's relative to your git working copy.
ENV NGINX_DOCROOT_IN_REPO="public"

USER gitpod

RUN apt-get update \
 && apt-get -y install php7.4-fpm \
 && apt-get clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/*