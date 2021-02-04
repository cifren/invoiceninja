FROM gitpod/workspace-full

COPY --from=mlocati/php-extension-installer:1.1.41 /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions \
    gd \
    gmp \
    opcache \
    pdo_mysql \
    zip

COPY ./gitpod/nginx/invoiceNinja.conf /etc/nginx/sites-enabled