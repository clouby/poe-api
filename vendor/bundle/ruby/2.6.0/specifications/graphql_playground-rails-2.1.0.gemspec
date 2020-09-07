# -*- encoding: utf-8 -*-
# stub: graphql_playground-rails 2.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "graphql_playground-rails".freeze
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ethan Apodaca".freeze]
  s.date = "2020-03-15"
  s.description = "GraphQL Playground provides a UI similar to GraphiQL with more features".freeze
  s.email = ["papodaca@gmail.com".freeze]
  s.homepage = "https://github.com/papodaca/graphql_playground-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "An engine to provide the GraphQL Playground".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 5.1.0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 5.1.0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 5.1.0"])
  end
end
