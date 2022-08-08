FROM bjrooney/alpine:3.16.1 as certs

FROM bjrooney/executor:v1.8.1-debug

SHELL ["/busybox/sh", "-c"]

COPY entrypoint.sh /
COPY --from=certs /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt

ENTRYPOINT ["/entrypoint.sh"]

LABEL repository="https://github.com/aevea/action-kaniko" \
    maintainer="Alex Viscreanu <alexviscreanu@gmail.com>"
