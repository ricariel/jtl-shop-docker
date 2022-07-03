#!/bin/bash

if [ ! -z "$PHP_FPM" ]; then
	echo "modify fpm worker" 
	sed -i "s/fcgi:\/\/.*:9000/fcgi:\/\/${PHP_FPM}:9000/g" /etc/apache2/conf-available/proxy-php.conf
fi

if [ ! -f "/var/www/html/.version" ] || [ ${JTL_SHOP_VERSION} != $(cat /var/www/html/.version) ]; then
  echo "upgrade or install"
	cd /docker-entrypoint.d/setup/
  echo ${JTL_SHOP_VERSION} > /var/www/html/.version
  wget -N https://build.jtl-shop.de/get/${JTL_SHOP_VERSION}.zip
  unzip -qo ${JTL_SHOP_VERSION}.zip -d /var/www/html/ -x 'install/*'
  cp -Rp /docker-entrypoint.d/setup/plugins/* /var/www/html/includes/plugins/
  cp -Rp /docker-entrypoint.d/setup/templates/* /var/www/html/templates/
  cp -p /docker-entrypoint.d/setup/.user.ini /var/www/html/
  patch /var/www/html/admin/.htaccess /docker-entrypoint.d/setup/admin_htaccess.patch
  patch /var/www/html/.htaccess /docker-entrypoint.d/setup/global_htaccess.patch
  wget -N https://build.jtl-shop.de/get/jtl_gdpr_right_to_be_forgotten_v1-0-1.zip
  unzip -qo /docker-entrypoint.d/setup/jtl_gdpr_right_to_be_forgotten_v1-0-1.zip -d /var/www/html/includes/plugins/ 
  unzip -qo /docker-entrypoint.d/setup/mw_idealo_4.zip -d /var/www/html/includes/plugins/
  unzip -qo /docker-entrypoint.d/setup/lizenz.zip -d /var/www/html/includes/plugins/mw_idealo/version/
  unzip -qo /docker-entrypoint.d/setup/ausgezeichnet_ioncube_72.zip -d /var/www/html/includes/plugins/
  unzip -qo /docker-entrypoint.d/setup/mw_idealo_512.zip -d /var/www/html/plugins/
else
	echo "Nothing to do for $0"
fi
# EOF

