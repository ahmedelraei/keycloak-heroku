# Deploy Keycloak to Heroku

This repository deploys the [Keycloak](https://www.keycloak.org) Identity and Access Management Solution
to Heroku. It is based of Keycloak's official docker image with some slight modifications to use the
Heroku variable for `PORT` and `DATABASE_URL` properly, also enabling the [edge](https://github.com/keycloak/keycloak-community/blob/main/design/keycloak.x/configuration.md#proxy-mode)
proxy mode by default.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/ahmedelraei/keycloak-heroku)

### Manual Deployment (Optional)

If you **don't want to use** the `Deploy to Heroku` button above for any reason, you need the Heroku CLI installed, so you can deploy this manually in a few steps after cloning this repository:

```shell
heroku apps:create --manifest
heroku addons:create heroku-postgresql
heroku stack:set container
git push heroku main
```

### Known Issues

- In some cases, Heroku stops the service startup because it becomes unresponsive given the latency of the automatic database migration execution in the first initialization. If that happens, you can request for [changing the boot timeout](https://tools.heroku.support/limits/boot_timeout) manually for you app.

## References

- [Keycloak Docker Image](https://quay.io/repository/keycloak/keycloak?tab=tags&tag=latest)
- [Keycloak Server Configuration](https://github.com/keycloak/keycloak-community/blob/main/design/keycloak.x/configuration.md)
- [Deploy Keycloak to Heroku (Wildfly)](https://github.com/ahmedelraei/keycloak-heroku)
