# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rex/registry/version'

Gem::Specification.new do |spec|
  spec.name          = "rex-registry"
  spec.version       = Rex::Registry::VERSION
  spec.authors       = ['Metasploit Hackers']
  spec.email         = ['msfdev@metasploit.com']

  spec.summary       = %q{Rex Library for parsing offline registry hives}
  spec.description   = %q{Ruby Exploitation(Rex) library for parsing offline registry files from a Windows machine}
  spec.homepage      = "https://github.com/rapid7/rex-registry"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.2.0'

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
