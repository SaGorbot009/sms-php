FROM php:8.1-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy project files to Apache directory
COPY . /var/www/html/

# Permissions fix (optional)
RUN chown -R www-data:www-data /var/www/html
