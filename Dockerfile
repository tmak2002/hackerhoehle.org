FROM hugomods/hugo AS build
WORKDIR /app
COPY .
RUN hugo

FROM nginx
COPY --from=build /app /usr/share/nginx/html
RUN chown -R nginx:nginx /usr/share/nginx/html
RUN chmod -R 777 /usr/share/nginx/html
RUN chmod -R 777 /usr/share/nginx/html
