---
layout: page
title: Getting Started
permalink: /documentation/getting-started
---

## Prerequisites

Raptor require a minimum of 4GB of RAM to run slightly.

For a quick installation, you only need both Docker and Docker Compose installed on your pc.

See the official Docker guide to install them:

-   [Docker](https://docs.docker.com/engine/installation/linux/ubuntu/#/install-docker)
-   [Docker Compose](https://docs.docker.com/compose/install/)

For example on an Ubuntu or Debian box as `root` you can install with

```
curl -sSL https://get.docker.com/ | sh
adduser `whoami` docker
apt-get install python-pip && pip install docker-compose
```

## Retrieve a release

Check the [release page](https://github.com/raptorbox/raptor/releases) for an up to date release to download.

Alternatively use the repository

```
git clone https://github.com/raptorbox/raptor.git
cd raptor
```

## Suggested configurations

For a development setup just use `docker-compose` to start the services with the default settings

For public facing services, ensure to **update the default passwords** in `config/raptor.yml` in the users section

## Start the services

Now use `docker-compose` to start the services

```bash
# if the command fails due to permissions, use sudo
docker-compoes up -d

# view the process status
docker-compoes ps

# view the logs
docker-compoes logs -f

```
