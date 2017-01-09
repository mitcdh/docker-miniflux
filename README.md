# Docker Miniflux

* Docker image to start a miniflux container with Alpine, Caddy, fpm, and an optional external db host.

### Environment Variables
* `DB_DRIVER`='postgres'
* `DB_HOSTNAME`='mysql01.miniflux.tld'
* `DB_USERNAME`='postgres'
* `DB_PASSWORD`='mysecretpassword'
* `DB_NAME`='miniflux'

### Structure
* `/www/public`: Web root
* `/www/public/data`: miniflux data directory
* `/scripts/Caddyfile`: base caddy file

### Exposed Ports
* `2015`: http web server

### Credits
* [miniflux/miniflux](https://github.com/miniflux/miniflux)
