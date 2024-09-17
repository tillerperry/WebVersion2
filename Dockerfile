# Use an official PHP image as the base image
FROM php:8.2-apache

# Copy the entire content of the current directory (.) to the Apache web root
#COPY . /var/www/html/

# Install git inside the container to be able to clone the repository
RUN apt-get update && apt-get install -y git

# Clone the GitHub repository into a temporary folder in the container
RUN git clone https://github.com/tillerperry/WebVersion2.git /var/www/html/

# Give necessary permissions to the files
RUN chown -R www-data:www-data /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache server when the container launches
CMD ["apache2-foreground"]