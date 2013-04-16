# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bj/version'

Gem::Specification.new do |spec|
  spec.name          = "bj"
  spec.version       = Bj::VERSION
  spec.authors       = ["Medivo Dev"]
  spec.email         = ["developers@medivo.com"]
  spec.description   = %q{We're porting an old version of BJ so that we don't have to switch a bunch of features in an older app.}
  spec.summary       = %q{Run stuff in the background...}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
