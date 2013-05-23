# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hashish/version'

Gem::Specification.new do |spec|
  spec.name          = "hashish"
  spec.version       = Hashish::VERSION
  spec.authors       = ["Kashyap"]
  spec.email         = ["kashyap.kmbc@gmail.com"]
  spec.description   = %q{Adds to_hash method}
  spec.summary       = %q{Adds a #to_hash method to classes that returns a hash with values
                          corresponding to the reader methods defined for the instance variables}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
