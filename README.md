# Single sign-on (SSO) RoR5 client-server demo

This is a demonstration of single sign-on for RoR5 applications. 

## Features
* docker-composed
* nginx as a frontend-server
* IdP and client implemented separately

## Pre-requirements
* Docker 1.13.0+
* docker-compose 

## Installation

Add these lines to /etc/hosts file:

```
127.0.0.1 ror5sso.local
127.0.0.1 idp.ror5sso.local
```

Then type in terminal window:
```console
$ cd ror5-sso
$ bin/docker-compose build
```

## Startup
Type in the terminal window:

```console
$ cd ror5-sso
$ bin/docker-compose up
```

## Shutdown
Then type in the terminal window:

```console
$ cd ror5-sso
$ bin/docker-compose stop
```
