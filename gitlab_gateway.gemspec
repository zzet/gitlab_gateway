#-*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'gitlab_gateway/version'

Gem::Specification.new do |gem|
  gem.name          = "gitlab_gateway"
  gem.version       = GitlabGateway::VERSION
  gem.authors       = ["Andrey Kumanyaev"]
  gem.email         = ["me@zzet.org"]
  gem.description   = %q{Gitlab API wrapper}
  gem.summary       = %q{Gitlab API wrapper}
  gem.homepage      = ""
  gem.license       = "MIT"

  gem.rubyforge_project = "gitlab_gateway"

  gem.files         = `git ls-files`.split("\n")
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 1.3"
  gem.add_development_dependency "rake"

  gem.add_runtime_dependency 'weary'
  gem.add_runtime_dependency 'multi_json'
  gem.add_runtime_dependency 'active_support'
end
