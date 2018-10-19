#!/bin/bash
service php7.2-fpm start
/usr/sbin/nginx -c /etc/nginx/nginx.conf
