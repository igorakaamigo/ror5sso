apk update && apk upgrade

apk add --update tzdata && \
    cp /usr/share/zoneinfo/$TIMEZONE /etc/localtime && \
    echo $TIMEZONE > /etc/timezone

apk add --update --virtual runtime-deps postgresql-client libffi-dev readline nodejs npm
npm install -g yarn

apk add --virtual build-deps build-base  postgresql-dev libc-dev linux-headers libxml2-dev libxslt-dev readline-dev
