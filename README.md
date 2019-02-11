# Automated docker jenkins for nginx proxy (webproxy) integrated with LetsEncrypt

This repo allows you to set up the great Jenkins as a container over SSL auto generated and auto renewed by our Web Proxy.

# Prerequisites

In order to use this compose file (docker-compose.yml) you must have:

1. docker [https://docs.docker.com/engine/installation/](https://docs.docker.com/engine/installation/)
2. docker-compose [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)
3. docker-compose-letsencrypt-nginx-proxy-companion [https://github.com/samuelba/docker-compose-letsencrypt-nginx-proxy-companion](https://github.com/samuelba/docker-compose-letsencrypt-nginx-proxy-companion)

# How to use

1. Clone this repository:

```bash
git clone https://github.com/samuelba/docker-jenkins.git
```

2. Make a copy of our .env.sample and rename it to .env:

Update this file with your preferences.

```bash
#
# Configuration for Jenkins using NGINX WebProxy
#

# Containers name
JENKINS_CONTAINER_NAME=jenkins

# Jenkins settings
LOCAL_JENKINS_DIR=/home/sam/jenkins/jenkins_home

# Host settings
VIRTUAL_HOST=jenkins.samuel.cloud
LETSENCRYPT_HOST=jenkins.samuel.cloud
LETSENCRYPT_EMAIL=samuel.bachmann@gmail.com

# Network name
NETWORK=webproxy
```

3. Start your container, the first time start without `-d` to get the password

```bash
$ docker-compose up -d
```

> This container must be in a network connected to your webproxy containers or use the same network of the webproxy.

> Please keep in mind that when starting for the first time it may take a few moments (even a couple minutes) to get your Let's Encrypt certificates generated.
