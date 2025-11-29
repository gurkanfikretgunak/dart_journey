
import 'dart:io';

// A simple web server that listens on localhost:8080.
Future<void> runWebServer() async {
  // The HttpServer.bind() method returns a Future<HttpServer>.
  // We use await to get the server object.
  final server = await HttpServer.bind(
    InternetAddress.loopbackIPv4, // Listen on localhost
    8080, // Port 8080
  );

  print('Server listening on http://${server.address.host}:${server.port}');

  // The server is a Stream of HttpRequest objects.
  // We can use await for to listen for incoming requests.
  await for (HttpRequest request in server) {
    // Handle the request and send a response.
    handleRequest(request);
  }
}

// This function handles individual requests.
void handleRequest(HttpRequest request) {
  // Get the response object from the request.
  final response = request.response;

  // Set the content type of the response to HTML.
  response.headers.contentType = ContentType.html;

  // Use a switch statement to handle different paths (routing).
  switch (request.uri.path) {
    case '/':
      response
        ..statusCode = HttpStatus.ok
        ..write('''
          <html>
            <head>
              <title>Dart Web Server</title>
            </head>
            <body>
              <h1>Welcome to the Dart Web Server!</h1>
              <p>Try these links:</p>
              <ul>
                <li><a href="/hello">/hello</a></li>
                <li><a href="/about">/about</a></li>
              </ul>
            </body>
          </html>
        ''');
      break;
    case '/hello':
      response
        ..statusCode = HttpStatus.ok
        ..write('<h1>Hello, from Dart!</h1>');
      break;
    case '/about':
      response
        ..statusCode = HttpStatus.ok
        ..write('<h1>About Us</h1><p>This is a simple web server example written in Dart.</p>');
      break;
    default:
      // Handle 404 Not Found errors.
      response
        ..statusCode = HttpStatus.notFound
        ..write('<h1>404 - Not Found</h1><p>The page you are looking for does not exist.</p>');
  }

  // Close the response to send it to the client.
  response.close();
}

// The main function to start the server.
// You can run this file directly using: dart run applications/examples/simple_web_server.dart
void main() {
  runWebServer();
}
