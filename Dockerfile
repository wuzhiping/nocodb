FROM nocodb/nocodb:latest

WORKDIR /usr/src/app

ADD caddy /usr/src/app/caddy

ADD Caddyfile /usr/src/app/Caddyfile

ADD dashboard /usr/src/app/dashboard

ADD start.sh /usr/src/appEntry/start.sh
