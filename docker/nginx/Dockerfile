FROM nginx:alpine

# Don't include the default nginx page
RUN rm /etc/nginx/conf.d/default.conf

WORKDIR /application

COPY docker/nginx/conf.d /etc/nginx/conf.d
COPY docker/nginx/nginx-entrypoint.sh /usr/local/bin

ENTRYPOINT ["nginx-entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
