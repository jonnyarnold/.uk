# Error Messages: The Golden Rules
<!--- software -->
*Posted by Jonny Arnold on 28th March 2016*

I think there are a lot of problems with error messages. The main issue is that often you need the error message translating: on more than one occasion I've asked a colleague about an error message, only for them to say "oh yeah, that actually means something else"!

I believe the main issue with writing error messages is that when you're writing the message you are the expert. This is dangerous - you'll start using language that makes sense to you, but not to anyone else.

Another possible issue is one of laziness - it's easier to let the built-in function throw an error message than to encapsulate the error in one of your own. However, if error messages are going to be useful, that encapsulation is invaluable.

Here are some rules I try to follow when writing error messages:

1. If this is an invalid input or a record cannot be found, supply the invalid value in the error message. Instead of `User cannot be found`, use `No user found for ID 31` or `'one@two' is not a valid e-mail address`.
2. The stack trace will not give run-time information, so make sure your error message does. Instead of `Write Error: File Not Found`, use `Cannot write to '/tmp/process.id': File Not Found`.
3. If you have further information, point to it! Instead of `Riak Server Error`, use `Riak Server Error (check the logs at /usr/local/log/riak)`.
4. If there is a common error, why not put in a common fix for it? Instead of `Invalid Character(s) Detected`, use `The character '£' is detected (are you providing a currency symbol?)`.
