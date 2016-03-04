# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fog/oracle/version"

Gem::Specification.new do |spec|
  spec.name          = "fog-oracle"
  spec.version       = Fog::Oracle::VERSION
  spec.authors       = ["Luka Zakrajšek"]
  spec.email         = ["luka@bancek.net"]
  spec.summary       = "Module for the 'fog' gem to support Oracle VM."
  spec.description   = 'This library can be used as a module for `fog` or as standalone provider
                        to use the Oracle VM in applications.'
  spec.homepage      = "https://github.com/xlab-si/fog-oracle"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.0"

  spec.add_dependency "fog-core"
  spec.add_dependency "fog-json"
  spec.add_dependency "fog-xml"
  spec.add_development_dependency "rake"
end
