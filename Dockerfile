FROM composer/composer:1.2-alpine

MAINTAINER Haohao Tian <llitfkitfk@gmail.com>

RUN composer create-project symfony/framework-standard-edition /app/symfony

VOLUME ["/app"]
WORKDIR /app

ENTRYPOINT ["composer"]

CMD ["--help"]

