FROM nginx
COPY public /usr/share/nginx/html
RUN chown -R nginx:nginx /usr/share/nginx/html
RUN chmod -R 777 /usr/share/nginx/html
RUN chmod -R 777 /usr/share/nginx/html
