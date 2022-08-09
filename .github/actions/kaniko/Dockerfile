FROM alpine:3.16.1 as certs

FROM gcr.io/kaniko-project/executor:v1.7.0-debug

COPY entrypoint.sh /
COPY --from=certs /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt

ENTRYPOINT ["/entrypoint.sh"]

