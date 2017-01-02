# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'oneapi/version'

Gem::Specification.new do |spec|
  spec.name          = "oneapi"
  spec.version       = OneApi::VERSION
  spec.authors       = ["Tomo Krajina", "Roland Laurès"]
  spec.email         = ["tkrajina@gmail.com", "roland.laures@netcat.io"]
  spec.description   = %q{OneApi Ruby client library. Source project is https://github.com/infobip/oneapi-ruby}
  spec.summary       = %q{OneApi Ruby client library}
  spec.homepage      = "https://github.com/Gnuside/oneapi"
  spec.license       = "Apache"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
