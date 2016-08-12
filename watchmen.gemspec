# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'watchmen/version'

Gem::Specification.new do |spec|
  spec.name          = 'Watchmen'
  spec.version       = Watchmen::VERSION
  spec.authors       = ['arthurix']
  spec.email         = ['arthuryx@gmail.com']
  spec.summary       = 'Investigate a html document in search of images'
  spec.description   = 'Investigate a html document in search of images'
  spec.homepage      = 'http://github.com/arthurix/watchmen'
  spec.license       = 'MIT'

  spec.files         = Dir.glob('{bin,lib,etc}/**/*')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_development_dependency 'mechanize', '~> 2.7'
  spec.add_development_dependency 'slugify', '~> 1.0'
end
