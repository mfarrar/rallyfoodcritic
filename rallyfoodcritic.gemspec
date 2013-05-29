# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rallyfoodcritic/version'

Gem::Specification.new do |spec|
  spec.name          = "rallyfoodcritic"
  spec.version       = Rallyfoodcritic::VERSION
  spec.authors       = "The Fellowship"
  spec.email         = "thefellowship@rallydev.com"
  spec.description   = %q{Common Foodcritic rules used across all of Rally}
  spec.summary       = %q{Common Foodcritic rules used across all of Rally}
  spec.homepage      = "http://github.com/RallySoftware-cookbooks/rally-foodcritic"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "foodcritic", "~> 2.1.0"
end
