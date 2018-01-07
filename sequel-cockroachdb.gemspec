# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sequel/adapters/cockroachdb/version'

Gem::Specification.new do |spec|
  spec.name          = "sequel-cockroachdb"
  spec.version       = Sequel::Cockroachdb::VERSION
  spec.authors       = ["Hollin Wilkins"]
  spec.email         = ["hollinrwilkins@gmail.com"]

  spec.summary       = %q{Sequel adapter for CockroachDB}
  spec.description   = %q{Sequel adapter for CockroachDB, based on the existing Postgresql adapter}
  spec.homepage      = "https://github.com/hollinwilkins/sequel-cockroachdb"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "sequel", "~> 5.3.0"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
