# API documentation

Raptor offers a JSON based restful API to manage object definitions, data streams and actions.

The API documentation is available as [swagger](http://swagger.io/) source and is browsable from the provided UI

<!--
- Object, Data and Action management [Browse](http://petstore.swagger.io/?url=http://api.raptorbox.eu/swagger.yaml) or [YAML source](http://api.raptorbox.eu/swagger.yaml)
- Authentication and Authorization [Browse](http://petstore.swagger.io/?url=http://api.raptorbox.eu/auth/v2/api-docs) or [YAML source](http://api.raptorbox.eu/auth/v2/api-docs)
-->

## Inventory API

The Inventory API handles device definitions

- [Swagger](https://petstore.swagger.io/?url=https://raptorbox.github.io/swagger/api/raptor-inventory/swagger.json)

## Profile API

The Profile API offers a per-user key-value local storage

- [Swagger](https://petstore.swagger.io/?url=https://raptorbox.github.io/swagger/api/raptor-profile/swagger.json)

## Stream API

The Stream API handles data push / pull for sensor data of a device

- [Swagger](https://petstore.swagger.io/?url=https://raptorbox.github.io/swagger/api/raptor-stream/swagger.json)

## Action API

The Action API handles the status and triggering of device defined actions

- [Swagger](https://petstore.swagger.io/?url=https://raptorbox.github.io/swagger/api/raptor-action/swagger.json)

## Tree API

The Tree API offers a hierarchical store to group resources like devices and users

- [Swagger](https://petstore.swagger.io/?url=https://raptorbox.github.io/swagger/api/raptor-tree/swagger.json)

## App API

The App API offer applications management features

**Work in progress**  See [#1](https://github.com/raptorbox/raptor-app/issues/1) for updates

## Auth API

The Auth API offers authentication and authorization, plus management for users, roles, permissions and tokens

**Work in progress**  See [#2](https://github.com/raptorbox/raptor-auth/issues/2) for updates
