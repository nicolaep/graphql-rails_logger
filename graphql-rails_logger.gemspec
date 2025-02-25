lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'graphql/rails_logger/version'

Gem::Specification.new do |spec|
  spec.name          = 'graphql-rails_logger'
  spec.version       = GraphQL::RailsLogger::VERSION
  spec.authors       = ['JetRuby']
  spec.email         = ['engineering@jetruby.com']

  spec.summary       = 'Pretty logger for Rails + GraphQL applications.'
  spec.description   = 'Display GraphQL queries in a more readable format.'
  spec.homepage      = 'https://github.com/jetruby/graphql-rails_logger'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rouge', '2.2.1'
  spec.add_dependency 'actionpack', '> 4.0'
  spec.add_dependency 'activesupport', '> 4.0'
  spec.add_dependency 'railties', '> 4.0'

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
end
