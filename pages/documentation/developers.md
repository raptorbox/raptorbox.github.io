---
layout: page
title: Raptorbox Developers
permalink: /documentation/developers
---

First, you need to get a Raptorbox instance up and running locally on your pc. In order to do that you can install it in two way, [step by step](#step-by-step-installation) or through a full [provisioning script](#full-provisioning-scripts). In any case Raptorbox requires some prerequisites in order to be installed on Ubuntu 16.04 or later.

Prerequisites:

- Java SDK 8 or later
- Maven 3 or later
- Docker >= 1.12
- Docker Compose >= 1.9

### Step by Step installation

You have to install the following tools:

- [Java SDK 8](http://tipsonubuntu.com/2016/07/31/install-oracle-java-8-9-ubuntu-16-04-linux-mint-18/) or later
- [Maven 3](https://maven.apache.org/install.html) or later
- [Docker](https://docs.docker.com/engine/installation/linux/ubuntu/#/install-docker)
- [Docker Compose](https://docs.docker.com/compose/install/)

About Elasticsearch, that will be installed automatically later via Docker container, you have to setup [Elasticsearch 5 Virtual Memory setup](https://www.elastic.co/guide/en/elasticsearch/reference/2.1/setup-configuration.html#vm-max-map-count)

Then you have to clone the github repository in your home directory:

``
$ git clone https://github.com/raptorbox/raptor
``

In the new raptor directory created, launch the command

``
$ sudo ./scripts/docker-build.sh
``

and then

``
$ sudo docker-compose -f docker-compose.test.yml up -d
``

Now with the command

``
$ sudo docker-compose ps
``

you are able to see all the docker processes active.

### Full provisioning scripts
Alternatively a full provisioning [script](https://raw.githubusercontent.com/raptorbox/raptor/master/scripts/provision.sh) for Ubuntu 16.04 is available.
<br/>
<br/>

***
Alternatively you can clone Raptor project in your home directory and in the raptor directory create a symbolic link to the raptor/config directory in this way:

``
$ sudo ln -s $HOME/config /etc/raptor
``

Then you have to add in the /etc/hosts file:

``
127.0.0.1 couchbase elasticsearch auth api broker proxy api.raptor.local raptor.local
``

In order to start mariadb, couchbase and elastichsearch services as docker containers, launch in the raptor directory:

``
$ docker-compose -f docker-compose.dev.yml up
``

and with an IDE (e.g. Netbeans) you can start the other Raptorbox services ([api](https://github.com/raptorbox/raptor/tree/master/raptor-http-api), [broker](https://github.com/raptorbox/raptor/tree/master/raptor-broker) and [auth](https://github.com/raptorbox/raptor/tree/master/raptor-auth-service))

Now with the command

``
$ sudo raptor ps
``

you are able to see all the docker processes active.

**Coming soon** [APIs Documentation](/documentation/api-docs/) is progressing on this topic but is not yet completed!
