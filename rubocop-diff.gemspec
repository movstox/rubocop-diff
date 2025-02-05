# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop/diff/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubocop-diff'
  spec.version       = Rubocop::Diff::VERSION
  spec.authors       = ['Richard McGain']
  spec.email         = ['richard.mcgain@shopify.com']

  spec.summary       = %q{run rubocop only on your changes}
  spec.homepage      = 'https://www.github.com/mcgain/rubocop-diff'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_runtime_dependency 'rubocop'
end
