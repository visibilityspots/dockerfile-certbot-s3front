FROM python:3.12.2-alpine3.19

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
    && pip install urllib3==1.25.11 \
    && pip install certbot-s3front \
    && apk del .build-deps

RUN rm -rf /var/cache/apk/*;

ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh" ]
