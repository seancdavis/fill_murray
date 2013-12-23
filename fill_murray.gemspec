# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fill_murray/version'

Gem::Specification.new do |spec|
  spec.name          = "fill_murray"
  spec.version       = FillMurray::VERSION
  spec.authors       = ["Sean C. Davis"]
  spec.email         = ["scdavis41@gmail.com"]
  spec.description   = %q{Easily add photos of Bill Murray, Nick Cage and Steven Segal to your project, because why not?}
  spec.summary       = %q{}
  spec.homepage      = "https://github.com/seancdavis/fill_murray"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
