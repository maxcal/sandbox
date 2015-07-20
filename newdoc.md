

## Sinon.fakeServer.create

```JS
var server = sinon.fakeServer.create(/** config = {} **/));
```

Creates a new server. This function also calls `sinon.useFakeXMLHttpRequest()`.
Create also accepts a optional `config` object which can be used to configure the fake server. See **options** for configuration parameters.

## Sinon.fakeServer.configure

```JS
server.configure({
  autoRespondAfter: 5,
  fakeHTTPMethods: true
})
```

Updates the fake server instance configuration from an object. See **options** for configuration parameters.

### ... The rest of the methods


### options

Since these options are properties on the server object they can be set directly:

```
server.autoRespond = true
```
As well as by passing an object literal to `fakeServer.create` and `.configure`.

- #### boolean autoRespond
If set, will automatically respond to every request after a timeout. The default timeout is 10ms but you can control it through the autoRespondAfter property. Note that this feature is intended to help during mockup development, and is not suitable for use in tests. For synchronous immediate responses, use respondImmediately instead.
- #### int autoRespondAfter (ms)
Causes the server to automatically respond to incoming requests after a timeout.
- #### boolean respondImmediately
 If set, the server will respond to every request immediately and synchronously. This is ideal for faking the server from within a test without having to call server.respond() after each request made in that test. As this is synchronous and immediate, this is not suitable for simulating actual network latency in tests or mockups. To simulate network latency with automatic responses, see server.autoRespond and server.autoRespondAfter.
- #### boolean fakeHTTPMethods
If set to true, server will find _method parameter in POST body and recognize that as the actual method. Supports a pattern common to Ruby on Rails applications. For custom HTTP method faking, override server.getHTTPMethod(request).
