# Inventory

Inventory provides the detailed information and functionality about the devices connected to Raptor. A well-defined data model for the devices and its stream or data is implemented to support different type of devices. How specific devices will be store data or what are the properties of it and what possible intraction you can have, everything is defined and provided under inventory.

## Device - Data Model

Imagine we want to control a robot with Raptor. We need to identify some properties of this robot and store it in Raptor by describing these properties of robot. We will register it in Raptor platform's understandable way that is:

```
{
    "name": "Robot",
    "description": "iRobot - Raptor",
    "properties": {        
                    "model": "robot-007",
                    "batteryLevel": "90%"

    }
}
```

1. `name`is required and is used to identify the device.
2. `description`is a textual description of the device to help users to identify the device.
3. `properties`is an object of key / values properties which may be useful to define further details of the device.

## How it works:

When a valid user tries to register a device in Raptor, role and permissions of the user is being checked to give security to the device. If the user has authority to perform this operation, a device of valid model processed and added to Raptor database. This newly valid device is assigned to the user automatically with full authority over the device. If some specific permissions are given to user defined in [Application](https://docs.raptorbox.eu/pages/overview/data-model.html) context, the user then will be able to perform those operations.

Detailed overview of operation on valid devices can be viewed [here](http://petstore.swagger.io/?url=https://raw.githubusercontent.com/raptorbox/raptorbox.github.io/v5/swagger/api/raptor-inventory/swagger.json).

