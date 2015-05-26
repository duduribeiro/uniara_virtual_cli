# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uniara_virtual_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "uniara_virtual_cli"
  spec.version       = UniaraVirtualCli::VERSION
  spec.authors       = ["Kadu Ribeiro"]
  spec.email         = ["mail@carlosribeiro.me"]
  spec.summary       = "Uniara Virtual CLI"
  spec.description   = "CLI to access your Uniara Virtual grades from your terminal"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
