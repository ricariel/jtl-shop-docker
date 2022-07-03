#!/bin/bash

writeable=(
'/var/www/html/templates_c'
'/var/www/html/plugins'
'/var/www/html/downloads'
'/var/www/html/bilder/banner'
'/var/www/html/bilder/brandingbilder'
'/var/www/html/bilder/hersteller/klein'
'/var/www/html/bilder/hersteller/normal'
'/var/www/html/bilder/intern/shoplogo'
'/var/www/html/bilder/intern/trustedshops'
'/var/www/html/bilder/kategorien'
'/var/www/html/bilder/links'
'/var/www/html/bilder/merkmale/klein'
'/var/www/html/bilder/merkmale/normal'
'/var/www/html/bilder/merkmalwerte/klein'
'/var/www/html/bilder/merkmalwerte/normal'
'/var/www/html/bilder/news'
'/var/www/html/bilder/newsletter'
'/var/www/html/bilder/produkte/mini'
'/var/www/html/bilder/produkte/klein'
'/var/www/html/bilder/produkte/normal'
'/var/www/html/bilder/produkte/gross'
'/var/www/html/bilder/suchspecialoverlay/klein'
'/var/www/html/bilder/suchspecialoverlay/normal'
'/var/www/html/bilder/suchspecialoverlay/gross'
'/var/www/html/bilder/variationen/mini'
'/var/www/html/bilder/variationen/normal'
'/var/www/html/bilder/variationen/gross'
'/var/www/html/bilder/konfigurator/klein'
'/var/www/html/mediafiles/Bilder'
'/var/www/html/mediafiles/Musik'
'/var/www/html/mediafiles/Sonstiges'
'/var/www/html/mediafiles/Videos'
'/var/www/html/mediafiles/.thumbs'
'/var/www/html/media/video'
'/var/www/html/media/image'
'/var/www/html/media/image/product'
'/var/www/html/media/image/storage'
'/var/www/html/export'
'/var/www/html/export/backup'
'/var/www/html/export/yatego'
'/var/www/html/jtllogs'
'/var/www/html/admin/templates_c'
'/var/www/html/admin/includes/emailpdfs'
'/var/www/html/dbeS/logs'
'/var/www/html/dbeS/tmp'
'/var/www/html/rss.xml'
'/var/www/html/uploads'
)

findargs=()
for i in "${writeable[@]}"; do
        findargs+=('!' '-path' "$i")
done

echo "Purge git"
find /var/www/html/ -name .git -print0 | xargs -r -0 rm -r
echo "chown"
chown -R www-data:www-data /var/www/html/
echo "set directory permissions ro"
find /var/www/html/ "${findargs[@]}" -type d ! -perm 550 -exec chmod 550 {} \;
echo "set file permissions ro"
find /var/www/html/ "${findargs[@]}" -type f ! -perm 440 -exec chmod 440 {} \;

echo "writeable files and directories"
for i in ${writeable[@]}; do
  chmod u+w $i;
  find $i -type d ! -perm 770 -exec chmod 770 {} \;
  find $i -type f ! -perm 660 -exec chmod 660 {} \;
done
echo "ready"
# EOF


