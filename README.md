Imagine
-------
[![Travis CI Build Status](http://travis-ci.org/knewter/imagine.png)](http://travis-ci.org/knewter/imagine)

Imagine is a {http://rubyonrails.org Rails} engine that provides drop-in image gallery support. It is extensible, and aims to be the de facto standard for Rails image galleries. Its a Rails image gallery, that's mountable.  Works on rails 3.1 at least :) Should work on 3.x

It's still in active development.

* [Github project](http://www.github.com/knewter/imagine)

See the links on the right for more info.

Installation
------------
Add this to the Gemfile of your Rails 3.1 project:

    gem 'imagine'

Bundle that puppy up:

    bundle install

Generate an initializer file with:

    rails generate imagine:initializer

Edit it with a sensible editor to taste:

    vi config/initializers/imagine.rb

Install the migrations if you use ActiveRecord with:

    rails generate imagine:migration

And run the migrations with:

    rake db:migrate

Imagine mounting Imagine, then do it!:

    mount Imagine::Engine, :at => "/imagine"

Finally, visit /imagine/albums in your browser to get started.

Features
--------
* Mountable rails engine. Drops in to provide photo album support.
* Plugin system allows new album view types to be built as minimal rails engines of their own.
* Set default album style in your app.
* View any album in any style by passing the plugin in params.
* Supports ActiveRecord or Mongoid

External Dependencies
---------------------
Imagine uses Dragonfly, which assumes you have ImageMagick installed on your server.

Plugins
-------
See the documentation.

Testing
-------
I've got this set up to use spork, so just do the following:

In one terminal, do:

    bundle exec spork rspec

In another terminal, once that's done, you can:

    bundle exec rake spec
    RAILS_ENV=test_mongoid bundle exec rake spec

Todo
----
* Allow a user to choose the default display style at album level
* Provide a standard means of wrapping with authentication
* Provide a happy-path for attaching albums polymorphically to other objects
* Make it look a little prettier.  Provide a stylesheet that you can include if you so desire.

Contributing
------------
If you want to contribute, you can do so a few different ways. You could fork us on [github](http://github.com/knewter/imagine), you could build a new album view plugin, or you could just [give us some feedback or suggestions](http://www.github.com/knewter/imagine/issues).

Issues/Suggestions/Questions
------
Please use the [github issue tracker](http://github.com/knewter/imagine/issues).

Credits
-------
- [Isotope11](http://github.com/isotope11) (sponsors)
- [Josh Adams](http://github.com/knewter) (author)
- [Bram Swenson](http://github.com/bramswenson) (contributor and documentation author)
- [Mark Evans](http://github.com/markevans) (author of Dragonfly and these yard templates)
- [Resolve](http://github.com/resolve) Some code (plugin system, .travis.yml) lifted ungraciously from http://github.com/resolve/refinerycms.  Those guys are awesome.
- Loads of helpful comments, issues, questions, suggestions and insults from others - you know who you are!

License
-------
This project uses MIT-LICENSE.

Copyright
---------
Copyright (c) 2011 Josh Adams. See LICENSE for details.
