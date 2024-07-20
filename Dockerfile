FROM quay.io/keycloak/keycloak:latest

COPY docker-entrypoint.sh /opt/keycloak_heroku/tools

WORKDIR /opt/keycloak

RUN ./bin/kc.sh start-dev
