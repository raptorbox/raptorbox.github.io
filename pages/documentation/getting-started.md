---
layout: page
title: Getting Started
permalink: /documentation/getting-started
---

### Docker setup

For a quick installation, you only need both Docker and Docker Compose installed on your pc.

See the official Docker guide to install them:

-   [Docker](https://docs.docker.com/engine/installation/linux/ubuntu/#/install-docker)
-   [Docker Compose](https://docs.docker.com/compose/install/)

For example on an Ubuntu or Debian box as `root` you can install with

```
curl -sSL https://get.docker.com/ | sh
apt-get install python-pip && pip install docker-compose
```

After that to setup a running environment on your pc launch this [script](https://raw.githubusercontent.com/raptorbox/raptor/master/scripts/installer.sh) as root.

Now with the command

`sudo raptor ps`

you are able to see all the docker processes active.

A list of useful commands (may require `root` privileges)

-   To start / stop / restart  `raptor [start | stop | restart]`
-   To upgrade `raptor pull && raptor up -d`
-   To remove the instance processes `raptor kill`

### Vagrant setup

If you have vagrant installed on your PC just run

`vagrant up`

to get the services up and running for you.
