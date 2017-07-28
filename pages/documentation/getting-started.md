---
layout: page
title: Getting Started
permalink: /documentation/getting-started
---

## Prerequisites

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
