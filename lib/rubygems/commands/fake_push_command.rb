require 'rubygems/commands/push_command'

# Because of the way Gem commands are loaded, it isn't possible at this time to
# override the #send_gem method without resorting to monkey patching.
class Gem::Commands::PushCommand < Gem::Command
  def execute
    name = get_one_gem_name
    gem_name, version = File.basename(name).scan(/(.*)-([\d\.]+).gem/).first

    sleep 0.5
    puts 'Pushing gem to RubyGems.org...'

    sleep 2
    puts "Successfully registered gem: #{gem_name} (#{version})"
  end
end

# Define the FakePushCommand class so the fake_push command also works.
Gem::Commands::FakePushCommand = Class.new(Gem::Commands::PushCommand)
