#!/usr/bin/env sh

envsubst '\$NGINX_HTTPS_PORT \$NGINX_HOST \$PHP_FPM_HOST' < /etc/nginx/conf.d/application.template > /etc/nginx/conf.d/app.conf

exec "$@"
