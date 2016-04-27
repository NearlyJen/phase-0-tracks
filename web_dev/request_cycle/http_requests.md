* 100 - the client SHOULD continue with the request. Additional confirmation message required.
* 200 - OK - the request has succeeded
* 300 - Multiple Choices - requested resource matches multiple possible locations.
* 400 - Bad Request - Request has bad syntax and SHOULD NOT be repeated until corrected
* 500 - Internal Server Error - request could not be fulfilled due to unexpected condition.


Both GET and POST are request - reponse methods between a client and a server. GET requests data and can be bookmarked, cached, and is less secure.
POST submits data to be processed and can not be bookmarked or cached and is more secure. GET should only be used to retrieve data.

Cookies store small bits of information inlittle text files on the users computer so that when that user visits a web page, the data is remembered. An example would be their user name.
Data is stored as key/value pairs and can expire or be attached to a specific page.

When the users browser reqests the page from the server, the cookie information is sent with that request.