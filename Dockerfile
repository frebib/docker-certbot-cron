FROM alpine:3.5
MAINTAINER Joe Groocock <frebib@gmail.com>

ADD newcert /usr/bin

RUN apk --no-cache add docker certbot openssl && \
    # Remove large unused docker binaries
    rm -f /usr/bin/docker-* /usr/bin/dockerd && \
    echo '0 6 * * * date && certbot renew --agree-tos --post-hook "$POST_HOOK" # Renew certificates at 6am' > /etc/crontabs/root

ENV POST_HOOK="docker restart nginx"
VOLUME /var/run/docker.sock

CMD [ "/usr/sbin/crond", "-f", "-l", "6", "-L", "/dev/stdout" ]

