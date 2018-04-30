# Action

Imagine we want our robot to turn on water pump for our fields. How will we do that being in Raptor cloud. We can register a new device, we can receive the data from device but this is still a half way communication. Action provides us the functionality to send data to our valid devices.

Take the above example, we need to send water on signal to our sensor so we can water our fields remote. We first have to connect the device and then to send signal or command to perform a specific task. Within Raptor cloud, we need to provide a specific model to communicate with device. As every other IoT device hace specific way to process commands or signal, Raptor allows the users to integrate their own functionality and device specific model that will be understanable by the device.

## Data Model

Our robot, as mentioned above, needs to turn on the water pump for the fields. As this functionality is specific for every IoT device, we have implemented one as an example to communicate with our robot. As mentioned in the model object of Stream, our robot sends us data about move, step and water. We here write the data on the water channel of Stream object that take a true/false parameter that will make our robot to perform the task. We will send the data to our robot through Raptor following the specific model that will let our robot to perform task:

```
URL:	/action/{deviceId}/{actionId}
{
    "on": true
}
```

_Note:_This payload model can be different according to sensor or device.

## How it works:

A valid user can send the command to the device in Raptor that has already specified communication channel. If the device needs some specific way of communication, a user must have that integrated with Raptor cloud. If this specific way of communication is availale, a valid user with his/her valid permissions can send the commands and actions to the device.

Detailed overview of APIs of stream can be viewed [here](http://petstore.swagger.io/?url=https://raw.githubusercontent.com/raptorbox/raptorbox.github.io/v5/swagger/api/raptor-action/swagger.json).

