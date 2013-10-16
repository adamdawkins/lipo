# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lipo/version'

Gem::Specification.new do |spec|
  spec.name          = "lipo"
  spec.version       = Lipo::VERSION
  spec.authors       = ["Adam Dawkins"]
  spec.email         = ["adamdawkins@gmail.com"]
  spec.description   = %q{An email HTML trimmer}
  spec.summary       = %q{Lipo sucks the fat out of HTML emails generated with Mailrox}
  spec.homepage      = "https://github.com/adamdawkins/lipo"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
