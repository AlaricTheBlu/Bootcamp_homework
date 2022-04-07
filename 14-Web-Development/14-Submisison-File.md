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

### Sessions and Cookies

15) The response header that sends a cookie is set-cookie.
16) Request headers from the client that will continue the client's session are from Cookie:. The name and value of the cookies will appear afterwards.

### Example HTTP Requests and responses

#### HTTP Request
17) This example is a POST request
18) Upgrade-Insecure-Requests: 1 is the header that expresses that the client would prefer an encrypted response.
19) The request does not appear to be part of a session, as it lacks the cookie header.
20) This request body is sending a username and password to the server, likely for the purpose of account creation or management. Specifically, it is sending a username of Barbara, and a password of, uh, well, password.

#### HTTP Response
21) The response's status code it 200 OK.
22) The web server handling the response is Apache.
23) The response does have a user session associated with it. This is evidenced by the header Set-Cookie: SessionID=5
24) The content in the response body is most likely to be the the HTML code that builds the webpage.
25) The security headers that are used in this response are:

X-Content-Type: NoSniff. This prevents a certain type of sniffing (MIME sniffing?) by advertising that the content types in the response should be followed and not be changed.

X-Frame-Options: DENY prevents the website from being loaded into a Frame, ensuring their content cannot be embedded in other sites.

X-XSS-Protection: 1; mode=block Prevents the webpage from loading they detect a reflected cross-site scripting occurring. 


Sources: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options 
https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options 
https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection, 
