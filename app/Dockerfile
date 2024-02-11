FROM php:8.1-fpm-alpine

WORKDIR /var/www/html

# Install Composer from the official image for security
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Install Node.js and npm
RUN apk add --update nodejs npm

# Copy the entire source code
COPY . /var/www/html

# Install Composer dependencies


# Install npm dependencies
RUN npm install