# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "attribute_helpers/version"

Gem::Specification.new do |spec|
  spec.name          = "attribute_helpers"
  spec.version       = AttributeHelpers::VERSION
  spec.authors       = ["Jacob Evelyn"]
  spec.email         = ["jevelyn@panoramaed.com"]
  spec.summary       = "Provides auto-serialization of simple Ruby types that "\
    "databases do not support."
  spec.homepage      = "https://github.com/panorama-ed/attribute_helpers"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "codeclimate-test-reporter"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
