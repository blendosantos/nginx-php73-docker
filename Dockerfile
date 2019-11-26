FROM wyveo/nginx-php-fpm

WORKDIR /usr/share/nginx/
RUN rm -rf /usr/share/nginx/html
COPY ./src /usr/share/nginx
RUN ln -s /usr/share/nginx/public /usr/share/nginx/html

RUN chmod -R 777 /usr/share/nginx/storage

#CMD ["php", "artisan migrate"]

EXPOSE 80
