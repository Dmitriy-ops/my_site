# Используем базовый образ Nginx
FROM nginx:stable-alpine
# Копируем кастомный index.html в директорию Nginx
COPY index.html /usr/share/nginx/html/index.html
#COPY nginx.conf /etc/nginx/conf.d/default.conf
# Экспонируем порты 80 и 443
EXPOSE 80
EXPOSE 443
