# Manage users

### Preparation

See [Getting started](/documentation/tutorials/getting-started) to learn how to get an authentication token.

### Create an user

**Notes:**

- An `admin` or `admin_user` permission can manage users

```bash
NEWUSER=`curl -X POST \
  http://raptor.local/auth/user \
  -H "authorization: $RTOKEN" \
  -H 'content-type: application/json' \
  -d '{
  "username": "new_user",
  "email": "email@example.local",
  "password": "secr3tpassw0rd",
  "firstname": "John",
  "lastname": "Doe",  
  "roles": [ "admin" ]
}'`

NEWUSER_USERNAME=`echo $NEWUSER | jq -r '.username'`
NEWUSER_ID=`echo $NEWUSER | jq -r '.uuid'`

echo "Created user $NEWUSER_USERNAME ($NEWUSER_ID)"

```

Example response:

```json
{
    "uuid": "1ac65c04-cf65-407b-b8d9-cf7581126347",
    "username": "new_user",
    "roles": [
        "admin"
    ],
    "firstname": "John",
    "lastname": "Doe",
    "email": "email@example.local",
    "enabled": true,
    "created": 1499075513845
}
```

### Update an user

**Notes:**

-   To disable an user, set the flag `enabled` to `false`

```bash
curl -X PUT \
  "http://raptor.local/auth/user/$NEWUSER_ID" \
  -H "authorization: $RTOKEN" \
  -H 'content-type: application/json' \
  -d '{
  "username": "new_user",
  "email": "new_user@example.local",
  "password": "passw0rdsecr3t",
  "roles": [ "admin" ]
}'
```

### Delete an user

```bash
curl -X DELETE \
  "http://raptor.local/auth/user/$NEWUSER_ID" \
  -H "authorization: $RTOKEN" \
  -H 'content-type: application/json'
```
