# Error Messages: The Golden Rules
<!--- software -->

Here are some rules I try to follow when writing error messages:

1. If this is an invalid input or a record cannot be found, supply the invalid value in the error message. Instead of `User cannot be found`, use `No user found for ID 31` or `'one@two' is not a valid e-mail address`.
2. The stack trace will not give run-time information, so make sure your error message does. Instead of `Write Error: File Not Found`, use `Cannot write to '/tmp/process.id': File Not Found`.
3. If you have further information, point to it! Instead of `Riak Server Error`, use `Riak Server Error (check the logs at /usr/local/log/riak)`.
4. If there is a common error, why not put in a common fix for it? Instead of `Invalid Character(s) Detected`, use `The character '£' is detected (are you providing a currency symbol?)`.
