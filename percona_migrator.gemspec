# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'percona_migrator/version'

Gem::Specification.new do |spec|
  spec.name          = 'percona_migrator'
  spec.version       = PerconaMigrator::VERSION
  spec.authors       = ['Ilya Zayats, Pau Pérez']
  spec.email         = ['ilya.zayats@redbooth.com', 'pau.perez@redbooth.com']

  spec.summary       = %q{pt-online-schema-change command generator for ActiveRecord migrations}
  spec.homepage      = 'http://github.com/teambox/percona_migrator'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'activerecord', '=3.2.21'
  spec.add_runtime_dependency 'activesupport', '=3.2.21'
  spec.add_runtime_dependency 'mysql2', '0.3.20'
  spec.add_runtime_dependency 'lhm', '2.1.0'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.4', '>= 3.4.0'
  spec.add_development_dependency 'byebug', '~> 0'
end