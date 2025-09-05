
FROM php:8.2-apache

# 啟用 Apache 的 rewrite 模組
RUN a2enmod rewrite

# 複製專案到 Apache 的根目錄
COPY . /var/www/html/

# 設定權限
RUN chown -R www-data:www-data /var/www/html

# 設定工作目錄
WORKDIR /var/www/html/

EXPOSE 80
