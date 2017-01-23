#!/bin/sh

CONFIG=config.php
MINIFLUX_PATH=/www/public

if [ -e "${MINIFLUX_PATH}/${CONFIG}" ]; then
    echo "config check: existing config"
else
	if [ ! -z "$DB_DRIVER" ]; then
	    echo "DB_DRIVER defined - adding to config.php"
	    /bin/cat >"${MINIFLUX_PATH}/${CONFIG}" <<EOL
<?php
define('DB_DRIVER', '${DB_DRIVER}');
define('DB_HOSTNAME', '${DB_HOSTNAME:-localhost}');
define('DB_NAME', '${DB_NAME:-miniflux}');
define('DB_USERNAME', '${DB_USERNAME:-postgres}');
define('DB_PASSWORD', '${DB_PASSWORD}');
EOL
	fi
	if [ ! -z "$BASE_URL" ]; then
		echo "BASE_URL defined - adding to config.php"
		echo "define('BASE_URL', '${BASE_URL}');" >> "${MINIFLUX_PATH}/${CONFIG}"
	fi
fi