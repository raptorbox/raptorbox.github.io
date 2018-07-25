# MQTT Broker

Raptor provides an other interface other than the APIs to get updates about different events in platform for example device data and stream. This counterpart to APIs is a MQTT \(Message Queuing Telemetry Transport\) broker, which is the heart of any publish/subscribe protocol. Depending on its core implementation, a broker can handle up to thousands of concurrently connected MQTT clients. For more details see [mqtt.org](http://mqtt.org/).

In MQTT, the connected devices need a protocol using which they could communicate only when it is required. As security is one of the core concern in IoT infrastructure, the authentication \(explained below\) made compulsory to communicate with the broker.

A valid user of platform can subscribe the topic in order to receive the updates about his devices \(already added and connected devices\) using the following:

```
url:         v5.raptorbox.eu
port:        1883
username:    <valid username> // authentication required to subscribe the topic
password:    <valid password>
topic:         stream/<device id>/<stream name>


// to access all the data
topic:         '#' 
```

Detailed information about connection to MQTT, payload, and response etc can be found [here](https://docs.raptorbox.eu/pages/documentation/api-docs/v5/mqtt.html).

