FROM composer/composer:1.1

MAINTAINER Haohao Tian <llitfkitfk@gmail.com>

RUN composer create-project symfony/framework-standard-edition /home/app/symfony

ENTRYPOINT ["composer"]

CMD ["--help"]

