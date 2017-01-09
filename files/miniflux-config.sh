#!/bin/sh

CONFIG=config.php
MINIFLUX_PATH=/www/public

if [ ! -z "$DB_DRIVER" ]; then
    echo "DB_DRIVER defined - creating config.php"
    /bin/cat >"${MINIFLUX_PATH}/${CONFIG}" <<EOL
<?php
define('DB_DRIVER', '${DB_DRIVER}');
define('DB_HOSTNAME', '${DB_HOSTNAME:-localhost}');
define('DB_NAME', '${DB_NAME:-miniflux}');
define('DB_USERNAME', '${DB_USERNAME:-postgres}');
define('DB_PASSWORD', '${DB_PASSWORD}');
EOL
        chmod 660 "${MINIFLUX_PATH}/${CONFIG}"
        chown www-data:www-data "${MINIFLUX_PATH}/${CONFIG}"
fi