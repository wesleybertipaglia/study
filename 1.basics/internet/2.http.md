# An Overview of HTTTP

HTTP, or Hypertext Transfer Protocol, is a protocol that allow us to send and receive hypertext on the web, this hypertext typically includes text, images, videos, and other multimedia elements. A complete document is reconstructed from different sub-documents fetched.

The message sent by the client, usually a web browser are called request and the messages sent by the server as an answer are called responses.

## Components of HTTP-based systems

HTTP is a client-server protocol: requests are sent by one entity, the user-agent, most of the time the user-agent is a Web browser, but it can be anything, for example, a robot that crawls the Web to populate and maintain a search engine index.

Each individual request is sent to a server, which handles it and provides an answer called the response.

Between the client and the server there are numerous entities, collectively called proxies, which perform different operations and act as gateways or caches, for example.

In reality, there are more computers between a browser and the server handling the request: there are routers, modems, and more.

## Client: the user-agent

The user-agent is any tool that acts on behalf of the user. This role is primarily performed by the Web browser, but it may also be performed by programs used by engineers and Web developers to debug their applications.

## The Web server

On the opposite side of the communication channel is the server, which serves the document as requested by the client. A server appears as only a single machine virtually; but it may actually be a collection of servers sharing the load (load balancing), or other software (such as caches, a database server, or e-commerce servers), totally or partially generating the document on demand.

A server is not necessarily a single machine, but several server software instances can be hosted on the same machine. With HTTP/1.1 and the Host header, they may even share the same IP address.

## Proxies

Between the Web browser and the server, numerous computers and machines relay the HTTP messages. Due to the layered structure of the Web stack, most of these operate at the transport, network or physical levels, becoming transparent at the HTTP layer and potentially having a significant impact on performance. Those operating at the application layers are generally called proxies. These can be transparent, forwarding on the requests they receive without altering them in any way, or non-transparent, in which case they will change the request in some way before passing it along to the server. Proxies may perform numerous functions:

- caching (the cache can be public or private, like the browser cache)
- filtering (like an antivirus scan or parental controls)
- load balancing (to allow multiple servers to serve different requests)
- authentication (to control access to different resources)
- logging (allowing the storage of historical information)

## HTTP Requests

- Request Line: Contains the HTTP method, the requested URL, and the HTTP version.
- Headers: Provide additional information about the request, such as the type of data the client can accept.
- Body: Contains the data being sent in the request. This is often used with POST and PUT requests.

Request Example:

```http
GET /example/resource HTTP/1.1
Host: www.example.com
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
```

## HTTP Responses

- Status Line: Contains the HTTP version, status code, and a brief message describing the status.
- Headers: Provide additional information about the server's response, such as content type, length, and server information.
- Body: Contains the data sent by the server in response to the client's request.

Response Example:

```http
HTTP/1.1 200 OK
Content-Type: text/html
Content-Length: 255

<html>
...
</html>
```

## HTTP Methods

HTTP methods, also known as HTTP verbs, define the actions that can be performed on a resource. Here's a brief summary of some commonly used HTTP methods:

1. GET: Retrieves data from a specified resource. It is idempotent, meaning multiple identical requests should have the same effect as a single request.

2. POST: Submits data to be processed to a specified resource. It is often used to create a new resource on the server. It is not idempotent.

3. PUT: Updates a specified resource or creates a new resource if it does not exist. It is idempotent, meaning multiple identical requests should have the same effect as a single request.

4. DELETE: Requests the removal of a specified resource. It is idempotent.

5. PATCH: Applies partial modifications to a resource. It is not always idempotent, and its specific behavior can vary.

6. HEAD: Requests the headers of a specified resource. It is similar to GET but does not return the actual data.

7. OPTIONS: Requests information about the communication options available for a specified resource. It is often used to check what HTTP methods are supported by a server.

8. TRACE: Echoes the received request back to the client. It is primarily used for diagnostic purposes and is rarely used in practice due to security concerns.

These methods provide a standardized way for clients to interact with servers, allowing for various operations such as retrieval, creation, modification, and deletion of resources on the web.

## HTTP Status Code

HTTP response status codes indicate whether a specific HTTP request has been successfully completed. Responses are grouped in five classes:

- Informational responses (100 – 199)
- Successful responses (200 – 299)
- Redirection messages (300 – 399)
- Client error responses (400 – 499)
- Server error responses (500 – 599)

### Commonly Encountered Status Codes:

- 200 OK: The request was successful.
- 201 Created: The request has been fulfilled, and a new resource has been created.
- 204 No Content: The server successfully processed the request, but there is no content to send.
- 400 Bad Request: The request could not be understood or was missing required parameters.
- 401 Unauthorized: The request requires user authentication.
- 403 Forbidden: The server understood the request but refuses to authorize it.
- 404 Not Found: The requested resource could not be found.
- 500 Internal Server Error: A generic error message returned when an unexpected condition was encountered on the server.

## Acknowledgment

This documentation is a summarized version of the [An overview of HTTP](https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview) provided by [Mozilla MDN](https://developer.mozilla.org/)
