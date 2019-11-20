FROM phpearth/php:7.3-apache

# add composer
RUN apk add --no-cache composer

# activate mod_rewrite
RUN sed -i '/LoadModule rewrite_module/s/^#//g' /etc/apache2/httpd.conf && \
    sed -i 's#AllowOverride [Nn]one#AllowOverride All#' /etc/apache2/httpd.conf

# maintainer
LABEL maintainer="Maximilian Stoelzle (maximilian@stoelzle.ch)"