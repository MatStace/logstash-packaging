#!/bin/bash

VERSION=1.1.10
RELEASE=1
set -e

if [ ! -f usr/share/logstash/logstash.jar ]; then
    wget "http://logstash.objects.dreamhost.com/release/logstash-${VERSION}-flatjar.jar" \
        -O usr/share/logstash/logstash.jar
fi
fpm \
    -n logstash \
    -v "$VERSION-$RELEASE" \
    -a all \
    -m "<lesspublic@gmail.com>" \
    --pre-install logstash.preinstall \
    --description "Logstash Open Source Log Management" \
    --url 'http://www.logstash.net/' \
    --config-files etc/logstash/syslog.conf \
    --config-files etc/default/logstash \
    -t deb \
    -s dir etc usr var
#    -d openjdk-7-jre-headless \
