# -*- encoding: utf-8 -*-
# stub: apollo_upload_server 2.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "apollo_upload_server".freeze
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["JetRuby".freeze]
  s.date = "2020-02-21"
  s.description = "apollo-upload-server implementation for Ruby on Rails as middleware.".freeze
  s.email = ["engineering@jetruby.com".freeze]
  s.executables = ["console".freeze, "setup".freeze]
  s.files = ["bin/console".freeze, "bin/setup".freeze]
  s.homepage = "https://github.com/jetruby/apollo_upload_server-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Middleware which allows you to upload files using graphql and multipart/form-data.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 4.2"])
      s.add_runtime_dependency(%q<graphql>.freeze, [">= 1.8"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 2.1"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 4.2"])
      s.add_dependency(%q<graphql>.freeze, [">= 1.8"])
      s.add_dependency(%q<bundler>.freeze, ["~> 2.1"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 4.2"])
    s.add_dependency(%q<graphql>.freeze, [">= 1.8"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2.1"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
  end
end
