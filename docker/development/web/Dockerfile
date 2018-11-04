FROM nginx:stable-alpine

WORKDIR /var/www

ARG TIMEZONE
ARG SERVER_NAME_CLIENT
ARG SERVER_NAME_IDP
ARG UPSTREAM_CLIENT
ARG UPSTREAM_IDP

ENV SERVER_NAME_CLIENT=$SERVER_NAME_CLIENT \
    SERVER_NAME_IDP=$SERVER_NAME_IDP \
    UPSTREAM_CLIENT=$UPSTREAM_CLIENT \
    UPSTREAM_IDP=$UPSTREAM_IDP \
    TIMEZONE=$TIMEZONE

RUN apk update && apk upgrade
COPY ./docker/development/web/setup.sh ./docker/development/web/nginx.conf /tmp/
RUN /bin/sh /tmp/setup.sh && rm /tmp/setup.sh /tmp/nginx.conf

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]
