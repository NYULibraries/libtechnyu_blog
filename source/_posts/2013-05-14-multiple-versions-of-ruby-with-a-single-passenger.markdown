---
layout: post
title: "Multiple Rubies with a single Passenger"
date: 2013-05-14 14:59
comments: true
author: Barnaby Alter
categories: 
- Ruby on Rails
- Phusion Passenger
---
Until [Phusion Passenger](https://www.phusionpassenger.com/) released [version 4](http://blog.phusion.nl/2013/05/06/phusion-passenger-4-0-1-final-release/) you had to choose a single Ruby to run Passenger with and all applications running on it had to be written in that Ruby. That method is clean and ideal. Unfortunately when managing multiple legacy applications things can't always be so clean.

I was recently moving an old app (i.e. Ruby 1.8.7, Rails 2.x, [Mongrel](https://github.com/mongrel/mongrel)) to a new server but didn't have the time to upgrade the app to a 1.9/3.x version. Luckily after reading the updated Passenger documentation I discovered that as of 4.x, Passenger now allows for multiple versions of Ruby to run the same version of Passenger. To make this work:

* Install Passenger with Ruby on Apache [the normal way](http://www.modrails.com/documentation/Users%20guide%20Apache.html#_installation):

    gem install passenger
    passenger-install-apache2-module

* And, following the directions, copy the directives to a global Passenger config (possibly in `conf.d/passenger.conf` or `httpd.conf` depending on your configuration):

LoadModule passenger_module /home/myuser/.rvm/gems/ruby-1.9.3-p125/gems/passenger-4.0.2/libout/apache2/mod_passenger.so
PassengerRoot /home/myuser/.rvm/gems/ruby-1.9.3-p125/gems/passenger-4.0.2
PassengerDefaultRuby /home/myuser/.rvm/wrappers/ruby-1.9.3-p125/ruby

* `PassengerDefaultRuby` has to be defined at the global level, but the `PassengerRuby` directive now can be defined at any level (i.e. VirtualHost, Directory, Location, _.htaccess_). So I changed my VirtualHost for this app to the following:

    <VirtualHost *:443>
    …
      RailsBaseURI /myapp
      <Directory /apps/myapp>
        Options -MultiViews
        PassengerRuby /home/myuser/.rvm/wrappers/ruby-1.8.7-p371/ruby
      </Directory>
    …
    </VirtualHost>

    **Notice** the `PassengerRuby` directive. It defines Ruby 1.8.7 for this specific app. So, yes, Passenger 4 was installed with Ruby 1.9.3, but because the gem supports multiple Ruby versions this local definition allows it to work with this 1.8.7 app.

    **Also notice** the difference between `RailsBaseURI` [for Rails 2.x apps](http://www.modrails.com/documentation/Users%20guide%20Apache.html#_deploying_a_ruby_on_rails_1_x_or_2_x_but_not_rails_gt_3_x_application) and `RackBaseURI` [for Rails 3.x apps](http://www.modrails.com/documentation/Users%20guide%20Apache.html#_deploying_a_rack_based_ruby_application_including_rails_gt_3).

## Related Links

* [Phusion Passenger](http://www.modrails.com/documentation/Users%20guide%20Apache.html)