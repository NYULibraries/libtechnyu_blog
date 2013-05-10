---
layout: post
title: "Deploy, Again and Again"
date: 2013-05-10 12:30
comments: true
author: Scot Dalton
categories:
- deploying
- Wu Tang Clan
- Capistrano
- Jenkins
---
We in web services love deploying code.
We deploy again and again.  Multiple times a day.
But, really, what does that mean and why should you care?

## What We Do
Before getting into what deploying means to us and why we love it so, I'd like to explain a bit about what we do.  

We're web developers which means we write code that powers web applications.
Maybe the code is a new piece of functionality for [uploading CSV files for the VBL](https://github.com/NYULibraries/umbra/commit/623757edf76b733e124e0e8e957d17fd3f6b1c1c).
Maybe it's a [security patch for the room reservation system](https://github.com/NYULibraries/room_reservation/commit/6595d31693aff87aefdf263881e9162373b91807). 
Maybe it's a wording change for [scan requests in GetIt](https://github.com/NYULibraries/getit/commit/6ec23498a538507be245a3b5711adddf943458dd).
Could be anything.

Once we write our code and are confident that it's working with as few bugs as possible (more on that in another post),
we need to push it to production so users get the benefits. That's where deploying comes in.
For us, deploying means pushing code to production regularly.

## Deploying vs. Releasing
So what's the big deal?  Why so excited?
Our excitement is rooted in the distinction between deploying code and releasing code.

What's the difference? Glad you asked.

We used to release code. We'd build a bunch of features for a system over the course of few weeks, 
QA test for a few weeks and then push out a gigantic release.
Sometimes this would be a three month cycle. Invariably there would be bugs.
When it came time to fix the bugs, we'd have to dig through our code to figure out what was breaking, which may have been code that 
we last touched months ago. It could also be tightly integrated with a bunch of other features.
It was hard to roll back changes without losing big swaths of functionality. Release cycles were quarterly at best.

We now try to deploy code. We write much smaller chunks of code, write automated tests to ensure that it's functioning as expected,
and push to production.  It's at most a week long cycle and more often than not, only a couple of hours.
Since the deployments are small they are much easier to roll back and/or fix if we mess something up. 
Code, test, deploy, repeat.  It's a much shorter cycle, allows us to address bugs more quickly and provides 
quick feedback on new functionality.

## Great, So What Changed?
So why didn't we do this before?  Mainly because pushing code into production is nerve wracking for everyone involved.

We reduce the stress of pushing code by automating the process.
We use a variety of tools to automate (e.g. Jenkins, capistrano), but the main thing is we know that the deployment will be the same every time. 
We've taken ourselves out of the push-to-production equation. 
We also employ tools that allow us to quickly rollback to a previous version if necessary.

What this all means is that we can get enhancements and fixes to users faster. And without a jarring major release.

