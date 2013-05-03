---
layout: post
title: "Introducing Library Technologists @ NYU - The Blog"
date: 2013-05-03 09:34
comments: true
author: Scot Dalton
categories: 
  - libtechnyu
  - biggie smalls
  - introductions 
  - octopress 
  - jekyll
  - git
---

Hi! We're libtechnyu.  Hit us up on our IRC channel, `#libtechnyu` (hosted on freenode, if you don't know, now you know).

I'm happy to introduce our shiny new blog.

It's a work in progress (isn't everything), but do check in now and again to see what we're up to.
We'll post what we're working on, what we've done, interesting little technological marvels we've encountered.

The usual. It's a blog.

## Contributing
The blog is [Octopress](https://github.com/imathis/octopress) which is prettyfied [Jekyll](https://github.com/mojombo/jekyll).

If you want to add a blog post, ask for access to [this repo](https://github.com/NYULibraries/libtechnyu_blog), clone it and rake a new post.
    
    $ clone git@github.com:NYULibraries/libtechnyu_blog.git libtechnyu_blog
    $ cd libtechnyu_blog
    $ bundle install
    $ bundle exec rake new_post["The Title of My Insightful Post"]

This will create the file `source/_posts/#{data}-the-title-of-my-insightful-post.markdown`.

[YAML Front Matter](https://github.com/mojombo/jekyll/wiki/yaml-front-matter) is at the top. Add yourself as the post's author.

    ---
    ...
    author: You
    ...
    ---

Then write your post in [markdown](http://daringfireball.net/projects/markdown/).

Once you're done, push back to master and Jenkins should take care of the rest.

    $ git add source
    $ git commit -m "Added my incredibly insightful post."
    $ git push origin master

## Questions?
Hit up sdalton at #libtechnyu on freenode. Not borges or humbert.  Those dudes are squabble-y.

Enjoy!