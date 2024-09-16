# Use an official PHP image as the base image
FROM php:8.2-apache

# Copy the entire content of the current directory (.) to the Apache web root
COPY . /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache server when the container launches
CMD ["apache2-foreground"]