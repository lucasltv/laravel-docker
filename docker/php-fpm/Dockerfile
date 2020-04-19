FROM php:7.1-fpm

ENV BUILD_DEPS \
    build-essential \
    zlib1g-dev \
    libicu-dev \
    libpcre3-dev \
    libpq-dev \
    libpng-dev \
    libjpeg62-turbo-dev \
    libmemcached-dev \
    libxml2-dev \
    libcurl4-openssl-dev \
    pkg-config \
    libssl-dev

ENV RUNTIME_DEPS \
    libpq5 \
    unzip \
    git \
    libfcgi0ldbl \
    libpng16-16 \
    libjpeg62-turbo \
    libmemcached11 \
    libmemcachedutil2 \
    libxml2

ENV PHP_EXTENSIONS \
    gd \
    opcache \
    zip \
    intl \
    mbstring \
    pdo_mysql \
    pdo_pgsql \
    bcmath \
    soap \
    sockets \
    exif

ENV PECL_EXTENSIONS \
    xdebug \
    apcu \
    redis \
    memcached

ENV PECL_MONGODB_DRIVER mongodb
ENV SPECIFIC_PECL_MONGODB_DRIVER mongodb-1.5.3

RUN apt-get update && apt-get install -y --no-install-recommends ${BUILD_DEPS} \
    && docker-php-ext-install ${PHP_EXTENSIONS} \
    && pecl install ${SPECIFIC_PECL_MONGODB_DRIVER} \
    && pecl install ${PECL_EXTENSIONS} \
    && docker-php-ext-enable ${PECL_EXTENSIONS} \
    && docker-php-ext-enable ${PECL_MONGODB_DRIVER} \
    && apt-get autoremove -y ${BUILD_DEPS} \
    && apt-get install -y ${RUNTIME_DEPS} \
    # Disable Xdebug by default
    && rm -rf /var/lib/apt/lists/* \
    && sed -i 's/^/;/' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /root/.composer

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /application

COPY docker/php-fpm/php.ini /usr/local/etc/php/php.ini
COPY docker/php-fpm/overrides.conf /usr/local/etc/php-fpm.d/zz-overrides.conf
COPY docker/php-fpm/php-entrypoint.sh /usr/local/bin

ENTRYPOINT ["php-entrypoint.sh"]

CMD ["php-fpm"]