# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vimeo_me2/version'

Gem::Specification.new do |spec|
  spec.name          = "vimeo_me2"
  spec.version       = VimeoMe2::VERSION
  spec.authors       = ["Bo-oz"]
  spec.email         = ["boristoet80@gmail.com"]

  spec.summary       = "Ruby client for the Vimeo API"
  spec.description   = "A lightweight Ruby wrapper around the Vimeo API (v3) for managing videos, users, albums, comments, presets and uploads."
  spec.homepage      = "https://github.com/mytours/vimeo_me2"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"]          = spec.homepage
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 3.1"

  spec.add_development_dependency "bundler", ">= 2.4"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.13"
  spec.add_development_dependency "vcr", "~> 6.4"
  spec.add_development_dependency "webmock", "~> 3.34"
  spec.add_development_dependency "simplecov", "~> 0.22"

  spec.add_runtime_dependency "httparty", ">= 0.21", "< 1.0"
end
