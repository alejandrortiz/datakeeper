FROM alpine:3.17

RUN apk add --no-cache postgresql-client

COPY ./etc/backups/scripts/generator /bin/generator
COPY ./etc/backups/crontab /etc/crontabs/root

RUN chmod +x /bin/generator

CMD crond -l 2 -f
