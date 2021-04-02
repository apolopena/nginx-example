FROM gitpod/workspace-full:latest

# optional: use a custom Nginx config.
COPY nginx.conf /etc/nginx/nginx.conf

# optional: change document root folder. It's relative to your git working copy.
ENV NGINX_DOCROOT_IN_REPO="public"

# php7.4-fpm required for Nginx to server PHP pages.
RUN sudo apt-get update -q \
    && sudo apt-get install -y php7.4-fpm

RUN sudo chown -R gitpod:gitpod /etc/php \
    && touch /var/log/php7.4-fpm.log