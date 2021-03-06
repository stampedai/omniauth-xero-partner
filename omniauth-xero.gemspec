# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/xero/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-xero"
  spec.version       = Omniauth::Xero::VERSION
  spec.authors       = ["Moty Michaely"]
  spec.email         = ["moty@xplenty.com"]

  spec.description   = "OmniAuth strategy for Xero Partner Application"
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/cushion/omniauth-xero"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "omniauth", ">= 1"
  spec.add_runtime_dependency "xeroizer", ">= 2"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
