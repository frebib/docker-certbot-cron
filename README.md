[hub]: https://hub.docker.com/r/frebib/certbot-cron

# [frebib/certbot-cron][hub] - Docker Let's Encrypt certbot
[![](https://images.microbadger.com/badges/image/frebib/certbot-cron.svg)](https://microbadger.com/images/frebib/certbot-cron) [![](https://images.microbadger.com/badges/version/frebib/certbot-cron.svg)][hub] [![Docker Stars](https://img.shields.io/docker/stars/frebib/certbot-cron.svg)][hub] [![Docker Pulls](https://img.shields.io/docker/pulls/frebib/certbot-cron.svg)][hub] [![Build Status](https://drone.adam-ant.co.uk/api/badges/frebib/docker-certbot-cron/status.svg)](https://drone.adam-ant.co.uk/frebib/docker-certbot-cron)

Automatically renews certificates with [Let's Encrypt](https://letsencrypt.org/) in a docker container. 

### Getting started

_Coming soon_

### Generating new certificates

A wrapper script is provided with this container to generate new certificates using certbot. To invoke, run the command below with the first argument as comma-separated domain names (any domains after the first will be added as a [Subject Alternative Name](https://en.wikipedia.org/wiki/Subject_Alternative_Name)) followed by an email address.

```
docker exec -ti certbot newcert domain.com,my.domain.com,www.domain.com email@domain.com
```

***Note:*** This command can also be used to add existing new domains to existing certificates. Certbot will prompt you if it detects a request for an existing domain and ask if you would like to merge the certificate.
