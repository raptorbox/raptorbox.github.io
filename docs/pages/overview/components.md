# Detailed Architecture



The following picture depicts a detailed view of RaptorBox \(Raptor / Raptor Cloud\) architecture.

[![](https://github.com/raptorbox/raptor-docs/raw/master/Raptorbox.png?raw=true "Raptorbox")](https://github.com/raptorbox/raptor-docs/blob/master/Raptorbox.png?raw=true)

RaptorBox as a rapid prototyping platform is a Microservice Architecture. All the components are designed to work independently from other. As security is a big concern in IoT world so the Authentication module is specially designed to keep data secure and provide all the components the authentication to communicate securely.

RaptorBox is designed to be a resource friendly so it can be used on simple and normal machine with less processing power and RAM. Therefore all of its components are dockerized which can be used either on same machine or can be distributed on different machine and connected together over tcp.

