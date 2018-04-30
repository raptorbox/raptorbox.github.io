# API Gateway

API Gateway is an entry point to Raptor Cloud / RaptorBox from any application whether it is a Raptor's provided UI or any 3rd party application. API gateway uses [NGNIX](https://www.nginx.com/) underneath. NGINX is open source software for web serving, reverse proxying, caching and more.

API gateway gives access to the devices and its data and apps etc. All the components \(app, devices etc\) use this gateway \(web server\) to exchange information between each other. Every request that comes from the client \(website or mobile or 3rd party\) first get authenticated from the Auth component of Raptor and then responded with the required data or response. All of this authorization uses the same gateway before responding with the required action.

