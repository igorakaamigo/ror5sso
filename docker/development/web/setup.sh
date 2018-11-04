apk add --update tzdata && \
    cp /usr/share/zoneinfo/$TIMEZONE /etc/localtime && \
    echo $TIMEZONE > /etc/timezone

CONFNAME=client UPSTREAM_SERVER="$UPSTREAM_CLIENT" SERVER_NAME="$SERVER_NAME_CLIENT" envsubst '$UPSTREAM_SERVER $SERVER_NAME $CONFNAME' < /tmp/nginx.conf > /etc/nginx/conf.d/default.conf
CONFNAME=idp UPSTREAM_SERVER="$UPSTREAM_IDP" SERVER_NAME="$SERVER_NAME_IDP" envsubst '$UPSTREAM_SERVER $SERVER_NAME $CONFNAME' < /tmp/nginx.conf > /etc/nginx/conf.d/idp.conf
