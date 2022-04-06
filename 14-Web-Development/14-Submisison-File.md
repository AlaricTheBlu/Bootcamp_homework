## Week 14 Homework

### HTTP Requests and Responses

1) The HTTP Request and Response processes occur using a client-server architecture.
2) The different parts of an HTTP request are:

    The request line (w/ the request being made, such as GET, or PUT)

    The Request Header

    (A row of white space)

    The Request Body

3) The part of the HTTP request that is optional is the Request Body.
4) The three different parts of an HTTP response are:

    The status line: (w/ a status code like 200 OK or 404)
    
    The Response Header
    
    (white space)
    
    Body
    
5) 400 status codes represent client-side errors, while 500 status codes represent server errors.
6) GET and POST requests are the two most common types of requests.
7) The type of HTTP request that is used for sending data is the POST request.
8) The part of the HTTP request that contains the data is the request body
9) The HTTP response's body is where the web-code for a webpage is located.

### Using curl

10) There are a number of advantages to using curl over using a browser. First, with machines or containers that don't have GUI's, you can't use a browser, so one would have to use curl. Curl, as a command line tool, is easier to use in automation, making automated HTTP requests simpler to do. Also, it includes a number of options, allowing one to make commands more specified to one's need.s
11) --request, or -X are the options to change the request method.
12) -H is the option to set request headers
13) -I is the option to view only the response headers
14) An attacker might use an OPTIONS request to find out which requests an HTTP server will respond to.
