FROM php:8.1-fpm-alpine

WORKDIR /var/www/html

# Install Composer from the official image for security
COPY --from=composer /usr/bin/composer /usr/bin/composer

# Install PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Install Node.js and npm
RUN apk add --update nodejs npm

# Copy the entire source code first
COPY . /var/www/html

# Copy Composer and NPM configuration files
COPY composer.json composer.lock ./
COPY package.json package-lock.json ./

# Install Composer dependencies
RUN composer install --no-interaction --optimize-autoloader --no-dev

# Install npm dependencies
RUN npm install
