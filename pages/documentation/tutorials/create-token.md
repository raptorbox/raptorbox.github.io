---
layout: page
title: Create and Assign Token
permalink: /documentation/tutorials/create-token
---


### Preparation

See [Getting started](/documentation/tutorials/getting-started) to learn how to get an authentication token.

### Create and object

Let's register a Drone device with this definition with the following command

```
RID=`curl http://api.raptorbox.eu/  \
-XPOST -H "Content-Type: application/json" \
-H "Authorization: Bearer $RTOKEN" \
-d @- <<EOF
{
    "name": "Drone",
    "description": "Remote controlled drone",
    "streams": {
        "status": {
          "position": "geo_point",
          "battery": "number",
          "active": "boolean"
        }
    },
    "actions": [
      "takePhoto",
      "flightBack"
    ]
}
EOF` && RID=`echo $RID | jq -r '.id'`
```

Now we have the created object id in the `RID` variable


### Create a token

To deploy a token with a longer lifespan we perform the following request

```
RTOKEN_DEVICE=`curl http://api.raptorbox.eu/auth/token \
-XPOST -H "Content-Type: application/json" -H "Authorization: Bearer $RTOKEN" \
-d '{ "name": "Device Token", "secret": "token secret key", "expires": 0 }' | jq -r ".token"`
```

Expires set to `0` will make a 20y valid token, to be used only for test purposes

### Assign permission to a token for a device

Now we have a Device the last step is to allow for specific permission an user

```
curl http://api.raptorbox.eu/auth/permission/device/${RID} \
-XPUT -H "Content-Type: application/json" -H "Authorization: Bearer $RTOKEN" \
-d @- <<EOF
{
  "user": "$RUSER_ID",
  "permissions": [ "push", "pull" ]
}
EOF
```

You will get the response with the newly set permissions

### Send data to the device

Ensure the token permission are working by attempting to send data (`push`)

```
curl http://api.raptorbox.eu/${RID}/streams/status \
-XPUT -H "Content-Type: application/json" \
-H "Authorization: Bearer $RTOKEN_DEVICE" \
-d @- <<EOF
{
  "position": [ 45, 11 ],
  "battery": 70,
  "active": true
}
EOF
```
