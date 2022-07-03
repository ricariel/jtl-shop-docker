#!/bin/bash

if [ ! -z "$PHP_FPM" ]; then
	echo "modify fpm worker" 
	sed -i "s/fcgi:\/\/.*:9000/fcgi:\/\/${PHP_FPM}:9000/g" /etc/apache2/conf-available/proxy-php.conf
fi

