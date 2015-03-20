# Emotional Programming
<!--- software -->
*Posted by Jonny Arnold on 20th March 2015*

Programming is often seen in the mainstream as an emotionless pursuit. Ask a member of the public to imagine a programmer at work and they will typically describe a bespectacled boy in a t-shirt, clutching a caffienated drink and staring blankly at the computer screen for hours on end, with the only sound being the clacking of keyboard keys.

I've recently joined a company called [Reevoo](http://reevoo.github.io/about/) and the reality is different. Not totally different - most stereotypes have a basis, after all - but certainly different. The developers work as a team on the tasks given to them. Also, developers don't (always) prefer to be alone: they will communicate with each other frequently to learn, discuss or chat.

Even when programmers are on their own, they won't be quiet. Sometimes when I'm programming my girlfriend comes into the room to ask what's wrong; most of the time I'm not aware I'm talking to myself - mumbling to myself about how complicated a piece of code is, or simply shouting at the computer because "this was the easy bit".

And there's the thing - *I'm not aware I'm talking to myself*. I'm venting to the world how I feel about a piece of code and I don't listen to it. This realisation got me thinking: what emotions do we typically feel when we're programming, and what information could they give us if we listened to them?

## Confusion - "I'm looking at this code and I don't understand what is going on!"

Code evolves. As a result, a section of code can be difficult to read if you haven't been on that journey of evolution yourself. Software engineering practices such as comments and good naming aim to provide readers with hints as to how the code is set up the way it is, but sometimes it is not enough. 

One difficulty I have when writing code is knowing who the reader is and what they will know. Are they going to know what a Decorator is? Do they know enough mathematics to follow the approximation I made? Are they aware of what the difference between a Client Admin and a System Admin are in this system? It is too easy to write as if you were talking to yourself, rather than someone who *hasn't* been staring at this section of code for an hour.

When I get confused I spend some time trying to **understand** what the code does. Often I write down or diagram how it is structured and try to share that with the team. This allows the team to tell me if I've made an incorrect assumption, and also teaches the other developers about the code.

Sometimes I **use tests to understand the code** in a scientific way - I test my assumptions of the system by writing an executable test and running it. This has the added advantage that the test will fail if the assumption changes. I've found tests to be a useful documentation of a system's assumptions.

Once I have a good idea of what the code does, it's time to **make it better** ([The Boy Scout Rule](http://programmer.97things.oreilly.com/wiki/index.php/The_Boy_Scout_Rule)): I try to restructure the code to make its intent more obvious. I change the names of variables and methods to explain more clearly their purpose. I add comments to explain *why* something is done, rather than how. 

## Excitement - "I want to use this new thing!"

One of the things I love so much about software is that it is constantly changing and there is always something new. As a result, there's a lot to get excited about in software.

Excitement is like emotional adrenaline, and I feel it has a productivity benefit too. If you can **ride the wave of your own excitement** you will find that you will do more work towards it, simply because you're getting a buzz out of it.

## Fear - "I don't want to change this code because I'm scared it will break"

Fear is a powerful emotion that often makes us make irrational decisions. Code can be scary for a number of reasons. Maybe I don't understand it. Maybe there are no tests to catch breaking changes. Maybe I have had run-ins with this code before and found it difficult to work with.

When I come across scary code, the first thing I do is try to **understand** what the code does (see the *Confusion* section above).

Once I understand the code, I **add more tests**. Tests act as a comfort blanket for the next programmer (which could be you!), allowing them to quickly establish what specification the code that they write must satisfy.

Once I know the scary code's nuances and have written tests against them, I can begin to  **refactor the code** to better accommodate these nuances. Code has to be redesigned regularly to ensure the design is still fit for purpose. Scary code usually comes about as a result of patching changes on top of an inadequate design.

## Pride - "This stuff I made is cool!"

We've all made something that we are proud of. What's especially interesting about pride is that everyone is proud of something different - I'm proud of (some) poems I wrote when I was a teenager, for instance.

I believe **you should be striving to make things that you are proud of**, whatever your definition may be. When I do, I become enthusiastic about the result, which has a positive effect on my own morale.

When I am proud of something I will **talk about it**. I'll start showing it to others and explaining why I think it's amazing. This kind of advocacy gets other people excited about your work; they may ask questions about how you did it, or they might ask how they can get their hands on it themselves. By building a buzz around your project or system, especially around its users, you promote its adoption and increase its chances of success.

## Frustration - "Why aren't the tests passing?!"

I think of myself as quite a patient guy. However, I have been driven to the point of insanity by tests that I can't correct. 

I've found my anger stems from two primary situations. First, I find myself getting angry when a small *feature* change can only be implemented with *large* code changes. I've seen a number of wonderful architectures that keep things exquisitely decoupled but require 20 files to be changed when the ID changes from an integer to a GUID.

My other main anger-inducing situation is when the code fails to communicate the point of failure accurately. In the world of RSpec and Jasmine do we believe that `SectionsBuilder no flags set #to_s correct JSON` is a reasonable specification? Why do we believe it is okay to tell the developer that there has been an error *without specifying what the error is*?

Sorry, got a bit angry towards the end there.

An effective technique I've sometimes used to combat this is to **be the bug fixer before the bug needs fixing**: I deliberately break something I make at least once and see what error message appears. If I can figure out what's going wrong without putting a breakpoint in the code, I am fixer-friendly.

As I've said in the other sections, once you come across these issues **the worst thing you can do is nothing**. (Unfortunately, this is also the easiest thing to do.)

---

Hopefully I've encouraged you to listen to what you're saying to yourself on those long nights in front of the computer. By listening to yourself you might be able to make the life of the next developer (which could be you) a little better.
