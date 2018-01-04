# Getting started

### Setup the environment

You can find more informations on (how to run an instance)[/documentation/getting-started] or just run `docker-compose up`

By default the web-service listen on `http://localhost:9090` while the MQTT broker on `mqtt://localhost:1883`

This documentation uses the [jq](https://stedolan.github.io) command line tool to extract JSON values.

### Login and authentication

The default access credentials are username: `admin` and password: `admin`

The first operation is to login with an user and get an api token

```
RUSER=`curl -XPOST -H "Content-Type: application/json" \
-d '{ "username": "admin", "password": "admin" }' http://raptor.local/auth/login`

RTOKEN=`echo $RUSER | jq -r '.token'`
RUSER_ID=`echo $RUSER | jq -r '.user.uuid'`

echo "User id $RUSER_ID with token $RTOKEN"
```

You will get back a session token and your user details

```
{
  "token":"eyJjcmVhdGVkIjoxNDc3NTU1MTIwMTM5LCJleHAiOjE0Nzc1NTY5MjAsInV1aWQiOiI1OTRkYjY4MS1kMDVjLTQ1OWQtYjg4MS1kMzJlNjQwY2E5MzcifQ",
  "user":{
    "uuid":"594db681-d05c-459d-b881-d32e640ca937",
    // ... plus other details
  }
```

With the token it is now possible to query the Data and Object Management API and start sending your data streams!

The login token is available in `$RTOKEN` and will be valid for 30 minutes

For example to list all the registered objects

```
curl -XGET -H "Content-Type: application/json" \
-H "Authorization: Bearer $RTOKEN" \
http://raptor.local/
```

### Accessing the MQTT broker

To access the broker open an MQTT (or Websocket) connection to `http://localhost:1883` using your username and password.

Token based access is supported by setting an empty username (or a single char if required by your client) and the token as password.

You can use any library supporting MQTTv3.1.1 like [mqtt.js](https://github.com/mqttjs/MQTT.js) or [Eclipse PAHO](https://eclipse.org/paho/)

Check this page for [a list of available topic](/documentation/api-docs/mqtt)
