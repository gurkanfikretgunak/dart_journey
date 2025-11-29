
# Building a Web Server in Dart

Dart is not just for client-side applications; it has powerful capabilities for server-side development as well. This guide will walk you through creating a basic web server using Dart's built-in libraries.

## 1. Core Concepts

A web server is a program that listens for incoming network requests (usually over HTTP) and sends back responses. When you type a URL into your browser, you are sending a request to a web server.

In Dart, the `dart:io` library provides the necessary tools to create an HTTP server. The two main classes we will use are:

*   `HttpServer`: This class listens for incoming HTTP requests on a specific IP address and port.
*   `HttpRequest`: This object represents a single incoming request from a client. It contains information like the requested URL, headers, and any data sent.

## 2. Creating a Basic Server

Let's build a server that listens on `localhost` at port `8080` and responds with "Hello, Dart!" to every request.

### Step 1: Import `dart:io`

First, you need to import the `dart:io` library to get access to the server classes.

```dart
import 'dart:io';
```

### Step 2: Bind the Server to an Address and Port

The `HttpServer.bind()` method creates a new server. It's an asynchronous method, so we use `await` to wait for it to be ready.

```dart
Future<void> main() async {
  // Bind the server to localhost (127.0.0.1) on port 8080.
  final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 8080);
  print('Server listening on http://${server.address.host}:${server.port}');
}
```

### Step 3: Listen for Requests

The `HttpServer` object is a `Stream` of `HttpRequest` objects. We can use an `await for` loop to process each request as it comes in.

```dart
Future<void> main() async {
  final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 8080);
  print('Server listening on http://${server.address.host}:${server.port}');

  // Listen for incoming requests.
  await for (HttpRequest request in server) {
    // For now, just send a simple response.
    request.response.write('Hello, Dart!');
    request.response.close(); // Don't forget to close the response!
  }
}
```

## 3. Running Your Web Server

To run this server, you would save the code in a file (e.g., `simple_server.dart`) and execute it from your terminal:

```bash
dart run simple_server.dart
```

You can then open your web browser and navigate to `http://localhost:8080`. You should see the text "Hello, Dart!". To stop the server, go back to your terminal and press `Ctrl + C`.

## 4. Handling Different URLs (Routing)

A real web server needs to handle different URLs (or "paths") and show different content for each. This is called routing. We can inspect the `request.uri.path` property to decide what to do.

Here is a more complete example with simple routing:

```dart
import 'dart:io';

Future<void> main() async {
  final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 8080);
  print('Server listening on http://${server.address.host}:${server.port}');

  await for (HttpRequest request in server) {
    handleRequest(request);
  }
}

void handleRequest(HttpRequest request) {
  final response = request.response;
  // Set the content type to HTML so the browser renders it correctly.
  response.headers.contentType = ContentType.html;

  // Use a switch statement for routing.
  switch (request.uri.path) {
    case '/':
      response
        ..statusCode = HttpStatus.ok
        ..write('<h1>Welcome Home!</h1>');
      break;
    case '/about':
      response
        ..statusCode = HttpStatus.ok
        ..write('<h1>About Page</h1><p>This is a simple server.</p>');
      break;
    default:
      // Handle pages that don't exist.
      response
        ..statusCode = HttpStatus.notFound
        ..write('<h1>404 - Not Found</h1>');
  }

  response.close();
}
```

In this example:
*   Navigating to `http://localhost:8080/` shows a welcome message.
*   Navigating to `http://localhost:8080/about` shows the about page.
*   Navigating to any other path will result in a "404 - Not Found" error.

This is the foundation of building web applications and APIs in Dart. For more complex applications, you might consider using a server-side framework like **Shelf** or **Alfred**, which provide more robust routing and middleware capabilities.
