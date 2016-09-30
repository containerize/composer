FROM alpine:3.4

MAINTAINER Haohao Tian <llitfkitfk@gmail.com>

RUN apk --update add wget curl git php php-curl php-openssl php-json php-phar php-dom && rm /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 

ENTRYPOINT ["/usr/bin/composer"]

CMD ["--help"]

