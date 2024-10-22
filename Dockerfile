# Используем базовый образ Nginx
FROM nginx:stable-alpine
RUN rm -r /usr/share/nginx/html
RUN mkdir -p /usr/share/nginx/html/page
# Копируем кастомный index.html в директорию Nginx
COPY index.html /usr/share/nginx/html/page/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
# Экспонируем порты 80 и 443
EXPOSE 80
EXPOSE 443
