# Imagine
[![Travis CI Build Status](http://travis-ci.org/knewter/imagine.png)](http://travis-ci.org/knewter/imagine)

A rails image gallery, that's mountable.  Works on rails 3.1 at least :)
It's still in active development.

* [Github project](http://www.github.com/knewter/imagine)

## USAGE
To use Imagine in your app, simply add it to your Gemfile.  Then, mount it by:

    mount Imagine::Engine, :at => "/imagine"

Install the migrations with:

    bundle exec rake imagine:install:migrations

And run the migrations with:

    bundle exec rake db:migrate

Finally, visit /imagine/albums in your browser to get started.

## TODO
* Allow a user to choose the default display style at album level
* API to define a default view for albums, images (so define a default plugin)
* Provide a standard means of wrapping with authentication
* Provide a happy-path for attaching albums polymorphically to other objects
* Make it look a little prettier.  Provide a stylesheet that you can include if you so desire.

## Plugins
New album display types are specified in plugins.

Plugins are just gems.  There is a plugin shipped with the core project called
`imagine_basic_list`.  It should serve as a good template for building your own.
There is another plugin called `orbit_view` that displays the album using jquery
orbit.

They're just rails engines, that have a bit of configuration logic to let
Imagine know that they should be incuded in the template style lists.


## Testing
I've got this set up to use spork, so just do the following:

In one terminal, do:

    bundle exec spork rspec

In another terminal, once that's done, you can:

    bundle exec rspec spec

## License
This project uses MIT-LICENSE.

## Contributors
Josh Adams (josh@isotope11.com)

Some code (plugin system, .travis.yml) lifted ungraciously from http://github.com/resolve/refinerycms.  Those guys are awesome.

