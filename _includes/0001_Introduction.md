## 1.1. What is this?

This document attempts to provide guidelines (or coding standards if you like) for all versions of C# up to and including 7.3 that are both valuable and pragmatic. 

## 1.2. Why would you use this document?

Although some might see coding guidelines as undesired overhead or something that limits creativity, this approach has already proven its value for many years. This is because not every developer:

- is aware that code is generally read 10 times more than it is changed;
- is aware of the potential pitfalls of certain constructs in C#;
- is up to speed on certain conventions when using the .NET Framework such as `IDisposable`, `async`/`await`, or the deferred execution nature of LINQ;
- is aware of the impact of using (or neglecting to use) particular solutions on aspects like security, performance, multi-language support, etc;
- realizes that not every developer is as capable, skilled or experienced to understand elegant, but potentially very abstract solutions;

## 1.3. Basic principles

There are many unexpected things I run into during my work as a consultant, each deserving at least one guideline. Unfortunately, I still need to keep this document within a reasonable size. But unlike what some junior developers believe, that doesn't mean that something is okay just because it is not mentioned in this document.

In general, if I have a discussion with a colleague about a smell that this document does not cover, I'll refer back to a set of basic principles that apply to all situations, regardless of context. These include:

- The Principle of Least Surprise (or Astonishment): you should choose a solution that everyone can understand, and that keeps them on the right track.
- Keep It Simple Stupid (a.k.a. KISS): the simplest solution is more than sufficient.
- You Ain't Gonna Need It (a.k.a. YAGNI): create a solution for the problem at hand, not for the ones you think may happen later on. Can you predict the future?
- Don't Repeat Yourself (a.k.a. DRY): avoid duplication within a component, a source control repository or  a [bounded context](http://martinfowler.com/bliki/BoundedContext.html), without forgetting the [Rule of Three](http://lostechies.com/derickbailey/2012/10/31/abstraction-the-rule-of-three/) heuristic.
- The [four principles of object-oriented programming](https://github.com/TelerikAcademy/Object-Oriented-Programming/tree/master/Topics/04.%20OOP-Principles-Part-1): encapsulation, abstraction, inheritance and polymorphism.
- In general, generated code should not need to comply with coding guidelines. However, if it is possible to modify the templates used for generation, try to make them generate code that complies as much as possible.

Regardless of the elegance of someone's solution, if it's too complex for the ordinary developer, exposes unusual behavior, or tries to solve many possible future issues, it is very likely the wrong solution and needs redesign. The worst response a developer can give you to these principles is: "But it works?".

## 1.4. Is this a coding standard?

The document does not state that projects must comply with these guidelines, neither does it say which guidelines are more important than others. However, we encourage projects to decide themselves which guidelines are important, what deviations a project will use, who is the consultant in case doubts arise, and what kind of layout must be used for source code. Obviously, you should make these decisions before starting the real coding work.

To help you in this decision, I've assigned a level of importance to each guideline:

![](/assets/images/1.png) Guidelines that you should never skip and should be applicable to all situations

![](/assets/images/2.png) Strongly recommended guidelines

![](/assets/images/3.png) May not be applicable in all situations

## 1.5. Source

The project was forked from [CSharpGuidelines](https://github.com/dennisdoomen/CSharpGuidelines). 
