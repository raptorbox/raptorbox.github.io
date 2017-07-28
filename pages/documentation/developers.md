---
layout: page
title: Raptorbox Developers
permalink: /documentation/developers
---

First, you need to get a Raptorbox instance up and running locally on your pc. In order to do that you can install it in two way, [step by step](#step-by-step-installation) or through a full [provisioning script](#full-provisioning-scripts). In any case Raptorbox requires some prerequisites in order to be installed on Ubuntu 16.04 or later.

## Requirements

You have to install the following tools:

-   [Java SDK 8](http://tipsonubuntu.com/2016/07/31/install-oracle-java-8-9-ubuntu-16-04-linux-mint-18/) or later
-   [Maven 3](https://maven.apache.org/install.html) or later
-   [Docker](https://docs.docker.com/engine/installation/linux/ubuntu/#/install-docker)
-   [Docker Compose](https://docs.docker.com/compose/install/)

Then you have to clone the github repository in your home directory:

``
$ git clone https://github.com/raptorbox/raptor
``

## Getting started

There are 3 `docker-compose` based files for development

-   `./dev.yml` Base services like databases and admin tools
-   `./test.yml` Services built from images and configured to talk with local instances, used for developing a single service while maintaining communication with other services
-   `./docker-compose.yml` Production ready setup

Respectively those first two are wrapped in scripts

-   `./scripts/dev.sh`
-   `./scripts/test.sh`

## Development environment setup

Development environment can be kick-started with those commands

```bash
# Package the jars or do it from the IDE
./scripts/mvn-build.sh

# Start dockerized services exposing local ports from :1008*
./scripts/test.sh up -d --build

# add ./config/nginx.test.yml to an nginx instance to enable proxy features
sudo apt-get install -y nginx
sudo ln -s `pwd`/config/nginx.test.yml /etc/nginx/sites-enabled/raptor.test.yml
sudo service nginx start

# Create a link to config in /etc/raptor
sudo ln -s `pwd`/config /etc/raptor

# Add hosts aliases for docker services
cat `pwd`/config/hosts | sudo tee -a /etc/hosts
```

When launching a service locally (in your IDE) and other services in`test.yml` those flags may be used

-   `--server.port` to match a specific port. Refer to `test.yml` for matching ports eg. `auth` will be matched by nginx at `localhost:10086`
-   `--dev` set the `development mode flag`. It will load additional configuration files: `raptor.dev.yml` and `${spring.config.name}.dev.yml` eg. `auth.dev.yml`. Those configurations will override the generic ones (`raptor.yml` and `${spring.config.name}.yml`).
