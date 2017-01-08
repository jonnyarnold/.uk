# Consistency is Not A Reason
<!--- software -->
*Posted by Jonny Arnold on 26th June 2016*

Consistency can be a good thing.

There, I said it. That's the nicest I'll be to consistency today.

In all seriousness, consistency has its advantages. By maintaining code conventions and mandating good software practices, you can bring the quality of a code base up. Furthermore, when code follows regular patterns it can be more obvious when mistakes are made. There have been a [very](https://msdn.microsoft.com/en-us/library/aa733744(v=vs.60).aspx) [very](http://www.sitepoint.com/coding-standards/) [very](http://paul-m-jones.com/archives/34) [very](https://www.smashingmagazine.com/2012/10/why-coding-style-matters/) large number of articles on why coding conventions matter. Consistency in general is a *positive* word in computer programming. 

As a result, I'm hesitant to publish this article, but I feel it is a thought that has gone unchallenged for a while: why do we have coding conventions, and what's the trade-off?

## Why We Cling To Consistency

I've been in discussions during my professional career where consistency is used as a *reason* for doing things. Rather than think critically about why we're doing things, we follow the coding conventions of our ancestors, for better or for worse. This, I believe, is incredibly dangerous and awkwardly common.

Why do we do this? I think there's a pretty simple explanation for that: it's easier to follow someone else's conventions than to challenge them. [Maintaining the status quo is easier than changing it.](http://www.goalsys.com/books/documents/ChangingtheStatusQuo-PAPER.pdf) This, however, leads to a situation where everyone knows the conventions *but not why*. In this scenario, how will we know whether the reasons for establishing conventions are still valid?

## The Impact of Consistency

I also think that consistency gives a subliminal message to developers that experimentation is frowned upon. This, I feel, is more damaging than the issues arising from a non-standard code style. We should be ensuring our system is ready to change, not putting things in place to avoid change!

I've been in a number of meetings where coding conventions become the main topic of discussion. [Everyone knows they should be talking about something else, but it's an accessible topic and everyone has an opinion.](https://en.wikipedia.org/wiki/Law_of_triviality) This makes coding conventions a dangerous subject.

![How Standards Proliferate (XKCD)](http://imgs.xkcd.com/comics/standards.png)

## Making Rules

Hopefully I've convinced you that consistency is not a reason. However, we do need rules from time to time: processes and code conventions can ensure quality work. So how can we make those rules and avoid falling into a consistency trap? Here are a few suggestions:

- Any rule should be constantly challenged. If someone cannot explain *why* a rule is in place, it should be removed. This ensures that only rules with valid reasons remain.
- If a rule can't be enforced automatically, don't set it. [Humans are really bad at being consistent](/blog/bad-at-things) but computers aren't: let's use this to your advantage!

These two suggestions should ensure we make rules that are enforcable and understandable in the future.
