FROM quay.io/keycloak/keycloak:latest

COPY docker-entrypoint.sh /opt/keycloak_heroku/tools

WORKDIR /opt/keycloak

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start"]
