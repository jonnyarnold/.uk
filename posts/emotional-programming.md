# Emotional Programming
<!--- software -->

Programming is often seen in the mainstream as an emotionless pursuit. Ask a member of the public to imagine a programmer at work and they will typically describe a bespectacled boy in a t-shirt, clutching a caffienated drink and staring blankly at the computer screen for hours on end, with the only sound being the clacking of keyboard keys.

I've recently joined a company called Reevoo and the reality is different. Not totally different - most stereotypes have a basis, after all - but certainly different. The developers work as a team on the tasks given to them. Also, developers don't (always) prefer to be alone: they will communicate with each other frequently.

Even when programmers are on their own, they won't be quiet. Sometimes when I'm programming my girlfriend comes into the room to ask what's wrong; most of the time I'm not aware I'm talking to myself - mumbling to myself about how complicated a piece of code is, or simply shouting at the computer because "this was the easy bit".

And there's the thing - *I'm not aware I'm talking to myself*. I'm venting to the world how I feel about a piece of code and I don't listen to it. This realisation got me thinking: what emotions do we typically feel when we're programming, and what information could they give us if we listened to them?

### Confusion - "I'm looking at this code and I don't understand what is going on!"

Code evolves. As a result, a section of code can be difficult to read if you haven't been on that journey of evolution yourself. Software engineering practices such as comments and good naming aim to provide readers with hints as to how the code is set up the way it is, but sometimes it is not enough. 

I find it difficult to write code because I don't know how much the reader will know about the system - are they going to know what a Decorator is? Do they know enough mathematics to follow the approximation I made? Are they aware of what the difference between a Client Admin and a System Admin are in this system?

When I come across scary code, the first thing I do is try to **understand** what the code does. Often I write down or diagram how it is structured and try to share that with the team. This allows the team to tell me if I've made an incorrect assumption, and also teaches the other developers about the code.

Sometimes I **use tests to understand the code** in a scientific way - I test my assumptions of the system by writing an executable test and running it. This has the added advantage that the test will fail if the assumption changes. I've found tests to be a useful documentation of a system's assumptions.

Once I have a good idea of what the code does, it's time to **make it better** ([The Boy Scout Rule](http://programmer.97things.oreilly.com/wiki/index.php/The_Boy_Scout_Rule)): I try to restructure the code to make its intent more obvious. I change the names of variables and methods to explain more clearly their purpose. I add comments to explain *why* something is done, rather than how. 

### Fear - "I don't want to change this code because I'm scared it will break"

Fear is a powerful emotion that often makes us make irrational decisions. Code can be scary for a number of reasons. Maybe I don't understand it. Maybe there are no tests to catch breaking changes. Maybe I have had run-ins with this code before and found it difficult to work with.

When I come across scary code, the first thing I do is try to **understand** what the code does (see the *Confusion* section above).

Once I understand the code, I **add more tests**. Tests act as a comfort blanket for the next programmer (which could be you!), allowing them to quickly establish what specification the code that they write must satisfy.

Once I know the scary code's nuances and have written tests against them, I can begin to  **refactor the code** to better accommodate these nuances. Code has to be redesigned regularly to ensure the design is still fit for purpose. Scary code usually comes about as a result of patching changes on top of an inadequate design.

### Frustration - "Why aren't the tests passing?!"

After working on a piece of code for a long time with little progress, anger can set in. Nobody likes not knowing what's going on. Frustration can come about for two reasons. First, and most often, the problem is hidden among a number of layers of the code base; as the programmer sees their debugging scope expanding, they start to become agitated. Secondly, and often in coalition with the first, the code fails to communicate accurately the point of failure. Ambiguous error messages and functions that allow abnormal inputs are likely to make you tear out your hair.

My solutions to frustrating code are similar to those for scary code: document what you find and use tests to isolate the issue. Describe the error more fully, and provide the developer with enough information to debug the code without having to perform any live interrogation. The test whether you need to do this is simple - if you needed to look at the code to understand the issue, you need more information in your error messages.

### Coolness

### Excitement

---

Remember that the person best placed to amend the code is the person who read it last (you). Next time you find yourself staring at the screen (or shouting at it) think about how you can make the life of the next programmer better - whether it is you or somebody else.
