FROM phpearth/php:7.3-apache

# add composer
RUN apk add --no-cache composer

# maintainer
LABEL maintainer="Maximilian Stoelzle (maximilian@stoelzle.ch)"