# App

Imagine you have different devices that are being used for entirely different purposes. For example you have 10 devices that gives you data about your fields and 5 other devices to keep track of your health. Keeping all the devices without application will make it little difficult when you tries to see the data of your smartband for your health. With having the application context, you will be able to easily differentiate the devices.

With the newer version of Raptor, Raptor introduce the application concept. Application works like a group where you can add different valid users and assign them different roles to perform different actions. You can add devices to the application and valid users of application will be able to perform specific operations on these devices specified by their roles.

## App - Data Model

Imagine the above example. We need to create and manage the app related to fields that will have some valid users who can perform some task and a bunch of devices that will send the data about the field's condition. A user will create an application in Raptor platform's will have following properties:

```
{
    "name": "Health",
    "description": "Health tracking Devices",
    "roles": [
	    	{
	      	    "name": "admin",
		    "permissions": ["admin"]
	    	},
	    	{
	     	    "name": "viewer",
		    "permissions": ["read_device"]
	    	}
    ],
    "users": [
	    	{
	    	    "roles": ["admin"],
	     	    "id": "<user_id>"
	    	}
    ]
}
```

1. `name`is required and is used to identify the device.
2. `description`is a textual description of the device to help users to identify the device.
3. `roles`is an array of objects which are key / values properties where name is the name of the role like _admin _and _viewer _and permission is an other array of objects that consists of permission like _admin _\(who can do anything in app like an owner\) and _read\_device _\(who can read only devices but cannot update, delete or create new devices\). More details about permissions can be seen [here](https://docs.raptorbox.eu/pages/overview/authentication.html).
4. `users`is an array of objects made of users and their specific roles within the application

## How it works:

A valid user can create an application. As a user created an application he/she is the owner of this application. He can add other already registered users and assign them specific roles within that application. These users will then be able to perform operations specified by their roles. A user then be able to register devices in the application or can add already registered devices to the application. This will group everything in one unit that will help the user to keep track of devices and users easily. The user will be able to distinguish devices and data of his/her or his/her family's health and fields as mentioned in the above example.

Detailed overview of operation on app can be viewed [here](http://petstore.swagger.io/?url=https://raw.githubusercontent.com/raptorbox/raptorbox.github.io/v5/swagger/api/raptor-application/swagger.json). Raptor supports user login and token based authentication in order to handle authentication and authorization to access and use the Raptor APIs.



