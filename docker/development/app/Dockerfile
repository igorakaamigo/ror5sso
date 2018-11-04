FROM ruby:2.5.3-alpine

WORKDIR /var/www

ARG RAILS_ENV
ARG TIMEZONE

ENV RAILS_ENV=$RAILS_ENV \
    RACK_ENV=$RAILS_ENV \
    RAILS_LOG_TO_STDOUT=1

COPY ./docker/development/app/setup.sh ./docker/development/app/cmd.sh /tmp/
RUN /bin/sh /tmp/setup.sh && rm /tmp/setup.sh

EXPOSE 3000

CMD ["sh", "/tmp/cmd.sh"]
