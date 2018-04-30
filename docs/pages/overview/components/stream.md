# Stream

After registering devices into the system, the next important thing is the data that is sent by devices. Data that is sent by devices saved in the Raptor but can have different type of raw data. This data can be retrieved by or viewed in Raptor provided GUI by valid user. In Raptor, Stream word is used to group the data that is send by devices at one time. It depends on the user which kind of data he/she wants from the device. The data can either be a dynamic data or predefined and can either be form different sensors or just one sensor in the device. In all cases the specific data is received by Raptor and sotred accordingly that can be viewed by the valid authrozied users.

## Data Model

Imagine our robot within Raptor environment is sending us data. We need to view the data through Raptor provided APIs. Upon requesting the data from Raptor, we will receive following:

```
{
  
    "offset": 0,
    "limit": 0,
    "sortBy": {
                "direction": "string",
                "fields": ["string"]
              },
    "channels": {
                "movearm": {
                            "arm": "right",
                            "degree": 70
                    },
                "takestep": {      
                            "direction": "east"
                    },
                "water": {
                            "on": false
                    }
    },
    "location": {
                    ...
    }
}
```

## How it works:

When a valid user register a device in Raptor, the device data \(stream\) is started to store in Raptor. If the user has authority to view the stream data, he/she can view it by logging in Raptor's GUI or can access it by consuming the APIs.

Detailed overview of APIs of stream can be viewed [here](http://petstore.swagger.io/?url=https://raw.githubusercontent.com/raptorbox/raptorbox.github.io/v5/swagger/api/raptor-stream/swagger.json).

