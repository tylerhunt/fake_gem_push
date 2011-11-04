# FakeGemPush

A RubyGems plugin that stubs out the `gem push` command but still displays a
simulated `gem push` output.


## Background

This Gem was created for use in screencast recording, so you can record the
pushing of the same Gem and version through multiple takes without affecting
the production RubyGems.org server.


## Usage

After installing the Gem, just use `gem push` like you normally would:

    $ gem push my_fake_gem-1.0.4.gem

You'll then see output that mirrors what you would see during a real `gem push`
without the Gem installed:

    Pushing gem to RubyGems.org...
    Successfully registered gem: my_fake_gem (1.0.4)

But the Gem won't actually be pushed up to the RubyGems.org server.

Be sure to uninstall the Gem before trying to do an actual push.


## Installation

Run the following command to install the Gem:

    $ gem install ruby_gem_push

Or add the `ruby_gem_push` gem to your `Gemfile`:

    gem 'ruby_gem_push'

Then run `bundle install` to install the gem.


## Copyright

Copyright © 2011 Tyler Hunt. See LICENSE for details.
