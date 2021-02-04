FROM gitpod/workspace-full

COPY --from=mlocati/php-extension-installer:1.1.41 /usr/bin/install-php-extensions /usr/local/bin/

RUN apt install \
    php7.4-gd \
    php7.4-gmp \
    php7.4-opcache \
    php7.4-pdo_mysql \
    php7.4-zip

COPY ./gitpod/nginx/invoiceNinja.conf /etc/nginx/sites-enabled