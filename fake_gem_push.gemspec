require './lib/fake_gem_push/version'

Gem::Specification.new do |gem|
  gem.name = 'fake_gem_push'
  gem.version = FakeGemPush::VERSION
  gem.summary = 'Stubs out the gem push command for doing simulating pushes.'
  gem.homepage = %q{http://github.com/tylerhunt/remockable}
  gem.authors = ['Tyler Hunt']

  gem.files = Dir['lib/**/*.rb']
end
