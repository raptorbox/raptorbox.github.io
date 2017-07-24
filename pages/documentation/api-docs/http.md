---
layout: page
title: API documentation
permalink: /documentation/api-docs/http
---

Raptor offers a JSON based restful API to manage object definitions, data streams and actions.

The API documentation is available as [swagger](http://swagger.io/) source and is browsable from the provided UI

<!--
- Object, Data and Action management [Browse](http://petstore.swagger.io/?url=http://api.raptorbox.eu/swagger.yaml) or [YAML source](http://api.raptorbox.eu/swagger.yaml)
- Authentication and Authorization [Browse](http://petstore.swagger.io/?url=http://api.raptorbox.eu/auth/v2/api-docs) or [YAML source](http://api.raptorbox.eu/auth/v2/api-docs)
-->

## Inventory API

The Inventory API handles device definitions

- [Swagger](https://petstore.swagger.io/?url=https://raw.githubusercontent.com/raptorbox/raptorbox.github.io/v4/swagger/api/raptor-inventory/swagger.json)

## Profile API

The Profile API offers a per-user key-value local storage

- [Swagger](https://petstore.swagger.io/?url=https://raw.githubusercontent.com/raptorbox/raptorbox.github.io/v4/swagger/api/raptor-profile/swagger.json)

## Stream API

The Stream API handles data push / pull for sensor data of a device

- [Swagger](https://petstore.swagger.io/?url=https://raw.githubusercontent.com/raptorbox/raptorbox.github.io/v4/swagger/api/raptor-stream/swagger.json)

## Action API

The Action API handles the status and triggering of device defined actions

- [Swagger](https://petstore.swagger.io/?url=https://raw.githubusercontent.com/raptorbox/raptorbox.github.io/v4/swagger/api/raptor-action/swagger.json)

## Tree API

The Tree API offers a hierarchical store to group resources like devices and users

- [Swagger](https://petstore.swagger.io/?url=https://raw.githubusercontent.com/raptorbox/raptorbox.github.io/v4/swagger/api/raptor-tree/swagger.json)

## Auth API

The Auth API offers authentication and authorization, plus management for users, roles, permissions and tokens

- [Swagger](https://petstore.swagger.io/?url=https://raw.githubusercontent.com/raptorbox/raptorbox.github.io/v4/swagger/api/raptor-auth/swagger.json)
