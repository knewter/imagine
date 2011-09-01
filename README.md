# Imagine
[![Travis CI Build Status](http://travis-ci.org/knewter/imagine.png)](http://travis-ci.org/knewter/imagine)

A rails image gallery, that's mountable.  Works on rails 3.1 at least :)
It's still in active development.

* [Github project](http://www.github.com/knewter/imagine)

## TODO
* Build the plugin system
* Build a plugin that ships with core that handles a basic display style
* Allow a user to choose the default display style at album level
* Allow a visitor to look at any album with any display style via a param

## Plugins
New album display types are specified in plugins.

Plugins are just gems.  There is a plugin shipped with the core project called
`imagine_basic_list`.  It should serve as a good template for building your own.

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

