# Developing raptor

Raptor is composed of different APIs that has its own repository

- Inventory, Stream, Profile, Action, Tree (Java) https://github.com/raptorbox/raptor
- User, Permission, Role, Token, Client, ACL (Javascript) https://github.com/raptorbox/raptor-auth
- App (Javascript) https://github.com/raptorbox/raptor-app
- UI (Javascript) https://github.com/raptorbox/raptor-ui

See the `README` of each repository to learn how to setup the single service development environment.

## Commong requirements

You need to install the following tools:

-   [Docker](https://docs.docker.com/engine/installation/linux/ubuntu/#/install-docker)
-   [Docker Compose](https://docs.docker.com/compose/install/)

then clone the main github repository in your home directory `git clone https://github.com/raptorbox/raptor`

## Compose file types

There are 3 `docker-compose` compatible files for different kind of deployment

-   `./dev.yml` Base services like databases and admin tools
-   `./test.yml` Services exposing connectable ports on the machine, used for developing a services while maintaining communication with other containerized services. Ensure to add to your `/etc/hosts` the list of hosts under `config/hosts`. It is required to have transparent proxy of request.
-   `./docker-compose.yml` Zero-config setup (**but need to change default password once started!**)

Respectively there are wrapper scripts to use the compose files

-   `./scripts/dev.sh`
-   `./scripts/test.sh`
