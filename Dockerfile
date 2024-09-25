FROM python:3.12.6-alpine3.20

VOLUME /etc/letsencrypt /var/lib/letsencrypt
WORKDIR /opt/certbot
ENV CRYPTOGRAPHY_DONT_BUILD_RUST 1

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

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

RUN git clone https://github.com/visibilityspots/dockerfile-certbot-s3front.git /tmp/certbot-s3front \
    && pip install urllib3==2.2.2 \
    && pip install certbot==2.11.0 \
    && python /tmp/certbot-s3front/setup.py install

RUN rm -rf /var/cache/apk/* \
    && apk del .build-deps

ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh" ]
