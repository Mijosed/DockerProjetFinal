# Dockerfile.php pour les services PHP

# Utilisez une image PHP de base
FROM php:7.4-fpm

# Installez les extensions nécessaires
RUN docker-php-ext-install pdo_mysql

# Exposez le port sur lequel PHP-FPM écoute
EXPOSE 9000

# Définissez le répertoire de travail
WORKDIR /var/www/html

# Ajoutez une étiquette pour distinguer les services
LABEL service=php1

# Ajoutez une autre étiquette pour le deuxième service
LABEL service=php2

