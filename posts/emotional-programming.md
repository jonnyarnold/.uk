# Emotional Programming
<!--- software -->

Programming is often seen in the mainstream as an emotionless pursuit. Ask a member of the public to imagine a programmer at work and they will typically describe a bespectacled boy in a t-shirt, clutching a caffienated drink and staring blankly at the computer screen for hours on end, with the only sound being the clacking of keyboard keys.

I've recently joined a company called Reevoo and the reality is different. Not totally different - most stereotypes have a basis, after all - but certainly different. The developers work as a team, communicating with each other frequently.

Even when programmers are on their own, they won't be quiet. Sometimes when I'm programming my girlfriend comes into the room to ask what's wrong; most of the time I'm not aware I'm talking to myself - mumbling to myself about how complicated a piece of code is, or simply shouting at the computer because "this was the easy bit".

And there's the thing - *I'm not aware I'm talking to myself*. I'm venting to the world how I feel about a piece of code and I don't listen to it. This realisation got me thinking: what emotions do we typically feel when we're programming, and what information could they give us if we listened to them?

### Fear - "I don't want to change this code because I'm scared it will break"

Fear is a powerful emotion that often makes us make irrational decisions. In a programming context scary code suggests that the code is not adequately understood (possibly because it is inherently complicated) or the programmer has a troubled past with this code. Sometimes it's because there are no tests to support the functionality.

There are a few ways of tackling scary code. Often the first thing to do is understand what the code does and then write down how it is structured. This gives other programmers a hand to hold as they venture into the forest, metaphorically speaking.

Next, you should add tests to ensure the scary code is adequately defined. This can often be done as a way of testing your understanding - guess what the system does, write a test to demonstrate, and if it passes your understanding is correct.

Once you know the scary code's nuances you can begin redesigning the code to better accommodate these nuances. Remember that most code starts as a beautifully designed masterpiece, but only for the requirements at the time of the design. Code has to be redesigned regularly to ensure the design is still fit for purpose. Scary code usually comes about as a result of patching changes on top of an inadequate design.

### Frustration - "Why aren't the tests passing?!"

After working on a piece of code for a long time with little progress, anger can set in. Nobody likes not knowing what's going on. Frustration can come about for two reasons. First, and most often, the problem is hidden among a number of layers of the code base; as the programmer sees their debugging scope expanding, they start to become agitated. Secondly, and often in coalition with the first, the code fails to communicate accurately the point of failure. Ambiguous error messages and functions that allow abnormal inputs are likely to make you tear out your hair.

*(I have a pet peeve around allowing parameters you can't deal with. It's most prominent in dynamic languages like Python and Ruby, where elegance is sometimes favoured over accuracy. In this world, None and nil objects are passed around and wreak havok on the code that follows it. I'll leave my hatred for another post.)*

My solutions to frustrating code are similar to those for scary code: document what you find and use tests to isolate the issue. Describe the error more fully, and provide the developer with enough information to debug the code without having to perform any live interrogation. The test whether you need to do this is simple - if you needed to look at the code to understand the issue, you need more information in your error messages.

### Confusion - "I'm looking at this code and I still don't understand what is going on!"

A premonition of frustration, feeling confused (and the realisation that follows) should indicate that the area of the code you are looking at needs to be clearer. Even with complex decision-making, you should be able to split out the logic into more logical sections. Draw a diagram to show how the code flows, and circulate this documentation to others so that they understand what is going on. Write comments into the code to explain why things are the way they are.

---

Remember that the person best placed to amend the code is the person who read it last (you). Next time you find yourself staring at the screen (or shouting at it) think about how you can make the life of the next programmer better - whether it is you or somebody else.
