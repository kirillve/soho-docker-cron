FROM debian:buster-slim

ENV DEBIAN_FRONTEND noninteractive
RUN set -x \
    && apt update -qq \
    && apt -y dist-upgrade \
    && apt -y install cron curl \
    && apt clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc /usr/share/man

ADD ./bin/entry-point.sh /usr/local/bin/

ENTRYPOINT entry-point.sh
