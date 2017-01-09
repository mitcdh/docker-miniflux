#!/bin/sh

MINIFLUX_SRC=/www/miniflux-src
MINIFLUX_PATH=/www/public

echo "updating miniflux"
cp -Ruf "${MINIFLUX_SRC}/." "${MINIFLUX_PATH}/"