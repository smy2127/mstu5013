# Theory and Programming of Interactive Media II (OMG WHAT HAVE I GOTTEN MYSELF INTO)

In _Part I_ we covered the foundations of programming and learned some basic tools of the web: HTML, CSS, and Javascript. These tools allowed us to think about and design/develop applications that support human computer interactions. In _Part II_ we extend our technological capabilities by introducing back-end technologies like databases, that extends our ideas of interaction beyond human-computer, to human-human.

---

## Repository

This repository is broken into three major sections: **RiotJS, Firebase, and WatchMe**. Concepts for Riot and Firebase are demonstrated in various examples in the Riot and Firebase folders respectively. These are examples that we will often analyze and discuss in class. Some of these examples contain partial solutions with enough scaffolding to get you thinking of the critical parts. It's expected that you give these unsolved portions an try before viewing the solutions (usually in following folders).

WatchMe contains exercises that link to YouTube videos at the following playlist: [MSTU5013 Playlist](https://www.youtube.com/playlist?list=PLn93-yl6k7zVQwjdAn9TXiXCZjaYlhn-6). These videos go in depth and follow me coding various conceptual exercises while articulating features of the code.

Unlike many other videos on the web, the WatchMe videos model how I "think" about both specific code features as well as how specific aspects relate to larger concepts at hand. I _explicitly articulate_ the details, speaking out loud my thoughts to make them accessible to you. Since I articulate many details of what I'm thinking as I code, the videos do run LONG. So fair warning, please give yourself ample time to view and reflect.

---

## Technologies

In this class, you will learn two core technologies to make full-stack interactive applications.

1. [RiotJS](http://riotjs.com/)
2. [Firebase](https://firebase.google.com)

### Riot

Riot is a tiny, simple to use, component based front-end framework that allows you to create parts of your front-end app, cleanly and quickly. It helps us to think about 'parts' of our page and removes the micro-managing tasks of explicitly writing and manipulating the DOM - Riot does most of the grunt work for us.

It is a lesser known framework in the similar space as solutions like: [AngularJS](https://angularjs.org) and [ReactJS](https://facebook.github.io/react). The reason we are using Riot lies in two key qualities:

- **Cognitively Friendly** - The similarity in syntax to regular HTML and the lack of extraneous "advanced" features (useful only in edge-cases) makes for a very _cognitive friendly_ library. It helps us focus on understanding larger concepts which translate well if you want to pursue other frameworks later.

- **Full-featured** - Riot is a small library but it is _complete_. You can absolutely build great interactive applications with Riot. For what it's worth, I have yet to run into a problem with Riot that made me consider giving up the benefits for other solutions.

### Firebase

Firebase is a BaaS - backend-as-service provided by Google. What this means is, it provides us with a bunch of back-end tools like, web hosting, database, storage - without us having to create our own. This not only saves us extra work around setting up these systems, but saves us the extra work to maintain. For people like us, being able to use services like Firebase (and now defunct Parse) allows us to focus our tasks on design and development of user experiences.

Firebase, offers us a bunch of great capabilities.



We like Firebase because:

- **Cognitively Friendly** - We'll interface with and utilize Firebase through the JS API. That means, we can do everything we need to using one language, Javascript. In the past - it used to be more complex. You might have needed to setup and run your server using _PHP_ or _Ruby_ and get your database code running using _SQL_. More languages for us means, more time learning syntax rather than focusing on the full-stack concepts.

- **Full-featured** - Like mentioned before, it offers a full suite of features one would need to create a full web-based user experience. Among the features it offers us:

	- Near-real-time database
	- File storage
	- Web hosting
	- Easy authentication
	- iOS and Android SDKs Options

You'll notice that in this class, we opt for a balance between simple to learn (so we can focus on concepts) and features. If you're asking why we aren't using the _most popular_ tools, this is why.

> `Popular !== Best`
