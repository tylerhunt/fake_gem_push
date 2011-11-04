require 'rubygems/command_manager'

# We have to require this here instead of relying on RubyGems own command
# loading code in order to ensure the monkey patch is loaded.
require 'rubygems/commands/fake_push_command'

Gem::CommandManager.instance.register_command :fake_push
