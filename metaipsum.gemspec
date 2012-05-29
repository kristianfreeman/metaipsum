# -*- encoding: utf-8 -*-
require File.expand_path('../lib/metaipsum/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kristian Freeman"]
  gem.email         = ["kristian@redsashimi.com"]
  gem.description   = "Lorem ipsum generator, generator"
  gem.summary       = "Now you can be hip and pseudo-Latin too!"
  gem.homepage      = "http://github.com/imkmf/metaipsum"

  gem.files         = `git ls-files`.split($\)
  gem.default_executable = %q{metaipsum}
  gem.executables   = ["metaipsum"]
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.add_development_dependency "rspec", ">= 2.0.0"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "clipboard"
  gem.name          = "metaipsum"
  gem.require_paths = ["lib"]
  gem.version       = Metaipsum::VERSION
end
