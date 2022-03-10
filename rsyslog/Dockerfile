FROM debian:bullseye-20220228-slim

WORKDIR /env

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update -y && apt install -y rsyslog rsyslog-pgsql

CMD rsyslogd -i /tmp/rsyslog.pid && sleep infinity
