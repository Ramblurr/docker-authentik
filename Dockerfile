FROM ghcr.io/goauthentik/server:stable
USER root
RUN set -ex; \
  usermod -u 1337 authentik; \
  groupmod -g 1337 authentik; \
  chown -R authentik:authentik /backups /certs /media /authentik
USER authentik
