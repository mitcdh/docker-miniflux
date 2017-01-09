#!/bin/sh

MINIFLUX_PATH=/www/public

echo "* */4 * * *  cd ${MINIFLUX_PATH} && php cronjob.php --call-interval=4 --update-interval=60 >/dev/null 2>&1" | crontab -u www-data -
crond -b -d 8