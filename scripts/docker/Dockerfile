FROM php:7.4-fpm

ENV TZ Asia/Ho_Chi_Minh
ENV INSTALL_PATH=/var/www/

WORKDIR $INSTALL_PATH

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN curl -fsSL https://deb.nodesource.com/setup_12.x | bash -

RUN apt-get update && apt-get install -y curl zip nodejs
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo_mysql bcmath && \
    pecl install -o -f redis && \
    rm -rf /tmp/pear && \
    docker-php-ext-enable redis && \
    npm install -g yarn


RUN usermod -u 1000 www-data
COPY . $INSTALL_PATH

EXPOSE 9000
CMD ["php-fpm"]
