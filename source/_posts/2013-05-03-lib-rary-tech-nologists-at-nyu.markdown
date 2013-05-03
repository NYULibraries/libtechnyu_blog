---
layout: post
title: "Library Technologists @ NYU"
date: 2013-05-03 09:34
comments: true
categories: libtechnyu
tags: introductions octopress jekyll git
---

# Introducting Library Technologists @ NYU - The Blog
Hi! We're libtechnyu.  Hit us up on our IRC channel, `#libtechnyu` (hosted on freenode, if you didn't know now you know).



The blog is [Octopress](https://github.com/imathis/octopress) which is prettyfied [Jekyll](https://github.com/mojombo/jekyll).

## Contributing
If you want to add a blog post, clone [this repo](https://github.com/NYULibraries/libtechnyu_blog) and rake a new post.
    
    $ clone git@github.com:NYULibraries/libtechnyu_blog.git libtechnyu_blog
    $ cd libtechnyu_blog
    $ bundle install
    $ bundle exec rake new_post["The Title of My Insightful Post"]

This will create the file `source/_posts/#{data}-the-title-of-my-insightful-post.markdown`.
[YAML Front Matter](https://github.com/mojombo/jekyll/wiki/yaml-front-matter) is at the top. Edit it. Or don't.

Then write your post in [markdown](http://daringfireball.net/projects/markdown/).

Once you're done, push back to master and Jenkins should take care of the rest.

    $ git add source
    $ git commit -m "Added my incredibly insightful post."
    $ git push origin master

## Questions?
Hit up #libtechnyu on freenode.  sdalton would be a good start.  Not borges or humbert.  Those dudes are squabble-y.
