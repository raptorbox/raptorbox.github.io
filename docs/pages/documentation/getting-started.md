---
layout: page
title: Getting Started
permalink: /documentation/getting-started
---

## Prerequisites

### Requirements

1. Raptor requires a minimum of 2-4GB of RAM to run slightly.
2. Ubuntu, at least 16.04
3. Git tools
4. Docker \(at least Docker 18.03.1-CE\) and Docker Compose

### Installation of required softwares

#### Git

```
sudo apt-get install git
```

#### Docker / Docker-Compose

For a quick installation, you only need both Docker and Docker Compose installed on your pc.

See the official Docker guide to install them:

* [Docker](https://docs.docker.com/engine/installation/linux/ubuntu/#/install-docker)
* [Docker Compose](https://docs.docker.com/compose/install/)

Example: on an Ubuntu or Debian box as `root` you can install with

```bash
curl -sSL https://get.docker.com/ | sh
adduser `whoami` docker
sudo apt-get install python-pip -y && sudo  pip install docker-compose
```

## 

## Installation Of RaptorBox

### Fast setup

For the fast installation, run the following command in terminal to get started immediately

```bash
curl -s https://raw.githubusercontent.com/raptorbox/raptor/master/scripts/installer.sh | sudo sh -s --
```

### Retrieve a release

Installation can also be done by downloading the latest release or by cloning the github repository.

* For a latest release, check the [release page](https://github.com/raptorbox/raptor/releases) to download.

* Alternatively, use the repository

```bash
git clone https://github.com/raptorbox/raptor.git
cd raptor
git tag
```

After downloading or cloning the release, run the following command in terminal.

```
echo "127.0.0.1  raptor.local" | sudo tee -a /etc/hosts
```

Now use `docker-compose` to start the services

```bash
# if the command fails due to permissions, use sudo
docker-compose up -d

# view the process status
docker-compose ps

# view the logs
docker-compose logs -f #<service name> eg app or auth
```

### Raptorbox UI

Go to[`http://raptor.local`](http://raptor.local) in your browser to start using the raptorbox.

To login into the RaptorBox, use default username/password.

```
username: admin
password: admin
```

### Raptorbox API Documentation

Go to[`http://raptor.local/apidocs`](http://raptor.local/apidocs) in your browser to start exploring the APIs of raptorbox.

For the authorization token, you can use the first Login API and get the token to test other APIs.

## Suggested configurations

* For a development setup just use `docker-compose up` to start the services with the default settings

* To **change/update the default passwords, **use `<raptorbox root directory>/config/raptor.yml` and in the users section, update the password.



