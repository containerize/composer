FROM alpine:3.4

MAINTAINER Haohao Tian <llitfkitfk@gmail.com>

RUN apk --update add wget curl git php5 php5-curl php5-openssl php5-json php5-phar php5-dom && rm /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 

RUN composer create-project symfony/framework-standard-edition /home/app/symfony

ENTRYPOINT ["/usr/bin/composer"]

CMD ["--help"]

