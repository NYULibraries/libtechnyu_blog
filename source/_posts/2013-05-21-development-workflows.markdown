---
layout: post
title: "Development Workflows"
date: 2013-05-21 14:55
comments: true
author: Hannan Butt
categories: workflow git github capistrano build test deploy tdd travis jenkins branching branch batman
---


Our development workflow is something we are very proud of, and yet we continue to try to actively improve it. The main workflow, however, doesn't change too much. We use a variety of different tools to make our workflow as efficient and transparent as possible. The main components are Git/GitHub, Jenkins/Travis CI, and Capistrano, which are used for building, testing, and deploying respectively.

Git/GitHub
---

### We don't build unless we Git.

[Git](http://git-scm.com/) is ~~our primary~~ the only source of version control. Git has proven to be very flexible, fast, and easy to use. Git is decentralized and distributed, so anybody with a Git repository (henceforth to be known as __repos__) has a full history of changes available to them. This allows for fast local development. Git's version control allows us to identify code changes that cause breaks. Git also allows us to work asynchronously, each person contributing code on their own time. When we want to merge, __Git does that for us__.

### Git calls GitHub Home

And so do we. [GitHub](https://github.com/) provides us with a cloud hosted Git repo. This way, we can have a centralized branch to push our changes, or commits, to. GitHub comes jam-packed with a powerful suite of features that help is in __every__ way.

With GitHub, our code is readily viewable to anyone who dare venture into our source code. Don't worry, our code is actually top-notch, as GitHub allows us to integrate with a host of other web services, such as [CodeClimate](https://codeclimate.com/), [Coveralls](https://coveralls.io/), and [Travis](https://travis-ci.org/) (more on that later), that analyze, check, and test our code.

### Make Like a Tree And

Branch. Branching with Git is integral to our workflow. We follow a very simple Git branching model, possibly the same as GitHub's. We usually have only two branches, Master and Development. The goal is to keep Master deployable at all times, this way we can ensure a fast and safe build at all times. Development, however, is very volatile and may break 95% of the time, especially if I'm involved. This is to be expected, as the goal is to fix all __issues__, add all __features__, and dish out all __enhancements__, all three of which can be reported on GitHub.

### Mergers and Executions 

If the development branch seems to pass, and it's not a simple hotfix or patch, then we send in a __pull request__. The pull request lets everyone involved in the project know that __we're going to merge to master__. Since this is a big deal, we have to make sure that master cannot fail. Our testing suite can show us how well we're doing, but sometimes we may want to bring up __issues__, __features__, and __enhancements__ that we didn't know about before. At this point we hold a __code review__. 

At our code reviews, we use the pull request feature to comment anything that could use a revisit, either line by line or full-blown functional issues. A lot of insight can come out of code reviews, but a lot of the times there are only minor bumps to resolve. After resolving all these issues, and the code is of exceptional quality, the branch is then __merged__. If not, the branch is ~~executed~~ revisited.

### Repeat

At the end of it all, the process is then repeated. If you're still confused, check out [Zach Holmans presentation on GitHub uses GitHub to build GitHub](http://zachholman.com/talk/how-github-uses-github-to-build-github/), he can explain anything better than I can and they have a remarkably similar branching model.

Jenkins/Travis-CI
---

### Calm down Doctor! Now is not the time for integration

That comes later. We believe testing to be essential to our work flow. We're huge proponents of ~~Behavior Driven Development, BDD for short,~~ Test Driven Development, TDD for short, a development model in which we write functionality tests before implementing the function. I'll be the first to admit, sometimes I get ahead of myself and forget to test, but we always try to test 100% of our code, don't believe me? [Check it](https://coveralls.io/r/NYULibraries/).

Of course testing manually is a pain, that's why we write our tests in code first. Any future changes in our code will likely break these tests, which is __good__. Had the tests not been there, we might've shipped faulty code!

Testing over and over again can be a pain as well. That's why we use tools like Jenkins and Travis, to provide us with continuous integration. Continuous Integration is the practice of applying continuous processes of quality control on a piece of software. With frequent short builds and tests, the software quality improves in reduced time.

### Jenkins, at your service.
![Jenkins logo](http://jenkins-ci.org/sites/default/files/jenkins_logo.png)

The Alfred to our Batman. Jenkins is a Continuous Integration software originally made for Java but flexible enough for almost anything. We have an instance of Jenkins that runs all our test builds. Jenkins can run our builds and show us what fails and what passes. The best part is, the builds run automatically every time we commit to GitHub, thanks to a bunch of powerful plugins. These plugins also provide us with coverage reports, build statistics, deployment tools, and a rich history of our builds.

### Travis
![Travis](https://si0.twimg.com/profile_images/3378789570/e1da61d4058395b770cd5ce15a6925e6.png)

I guess Travis is a construction worker. Travis-CI provides us with continuous integration, just like Jenkins, but on the cloud. Travis is tightly connected to GitHub, and such provides cool things to us such as badges. It can also send build statistics to services like Coveralls. Whereas Jenkins provides us with a whole slew of options (deployment options, private GitHub repos, crons, an IRC bot), Travis is really good at running builds. 

Capistrano
---
At the end of our development workflow we deploy/ship. Scot wrote a [wonderful post on why/how we deploy](https://web1.library.nyu.edu/libtechnyu/blog/2013/05/10/deploy-again-and-again/). I'm here to tell you when we deploy.

Short story, when he says so:
[![Ship it!](http://shipitsquirrel.github.io/images/ship%20it%20squirrel.png)](http://shipitsquirrel.github.io/)

Long story, after our tests have passed, the bugs have been fixed, the requirements have been met, and, if it's a particularly big release, after our code has been reviewed.

Summary
---
Code. Test. Deploy.

I think I'll post on all the various tools/services we use.

__EDIT:__ We're more TDD than BDD.