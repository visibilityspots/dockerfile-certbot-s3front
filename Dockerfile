FROM python:3.13.2-alpine3.21

VOLUME /etc/letsencrypt /var/lib/letsencrypt
ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

RUN apk add --no-cache --virtual .certbot-deps \
    libffi \
    libssl3 \
    ca-certificates \
    binutils

RUN apk add --no-cache --virtual .build-deps \
    gcc \
    linux-headers \
    openssl-dev \
    musl-dev \
    libffi-dev \
    git

COPY . /tmp/certbot-s3front

WORKDIR /tmp/certbot-s3front

RUN pip install --no-cache-dir -r requirements.txt

RUN python setup.py install

RUN rm -rf /var/cache/apk/* \
    && rm -rf /tmp/* \
    && apk del .build-deps

WORKDIR /opt/certbot

ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh" ]
