# -*- encoding: utf-8 -*-
# stub: serrano 0.3.6 ruby lib

Gem::Specification.new do |s|
  s.name = "serrano".freeze
  s.version = "0.3.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Scott Chamberlain".freeze]
  s.date = "2017-04-04"
  s.description = "Low Level Ruby Client for the Crossref Search API".freeze
  s.email = "myrmecocystus@gmail.com".freeze
  s.executables = ["serrano".freeze]
  s.files = ["bin/serrano".freeze]
  s.homepage = "https://github.com/sckott/serrano".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0".freeze)
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Crossref Client".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.14.6", "~> 1.14"])
      s.add_development_dependency(%q<rake>.freeze, [">= 12.0.0", "~> 12.0"])
      s.add_development_dependency(%q<test-unit>.freeze, [">= 3.2.1", "~> 3.2"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.14.1"])
      s.add_development_dependency(%q<codecov>.freeze, ["~> 0.1.10"])
      s.add_development_dependency(%q<json>.freeze, [">= 2.0.3", "~> 2.0"])
      s.add_development_dependency(%q<vcr>.freeze, [">= 3.0.3", "~> 3.0"])
      s.add_development_dependency(%q<webmock>.freeze, [">= 2.3.2", "~> 2.3"])
      s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.12.0.1"])
      s.add_runtime_dependency(%q<faraday_middleware>.freeze, ["~> 0.11.0.1"])
      s.add_runtime_dependency(%q<thor>.freeze, ["~> 0.19.4"])
      s.add_runtime_dependency(%q<multi_json>.freeze, [">= 1.12.1", "~> 1.12"])
    else
      s.add_dependency(%q<bundler>.freeze, [">= 1.14.6", "~> 1.14"])
      s.add_dependency(%q<rake>.freeze, [">= 12.0.0", "~> 12.0"])
      s.add_dependency(%q<test-unit>.freeze, [">= 3.2.1", "~> 3.2"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.14.1"])
      s.add_dependency(%q<codecov>.freeze, ["~> 0.1.10"])
      s.add_dependency(%q<json>.freeze, [">= 2.0.3", "~> 2.0"])
      s.add_dependency(%q<vcr>.freeze, [">= 3.0.3", "~> 3.0"])
      s.add_dependency(%q<webmock>.freeze, [">= 2.3.2", "~> 2.3"])
      s.add_dependency(%q<faraday>.freeze, ["~> 0.12.0.1"])
      s.add_dependency(%q<faraday_middleware>.freeze, ["~> 0.11.0.1"])
      s.add_dependency(%q<thor>.freeze, ["~> 0.19.4"])
      s.add_dependency(%q<multi_json>.freeze, [">= 1.12.1", "~> 1.12"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, [">= 1.14.6", "~> 1.14"])
    s.add_dependency(%q<rake>.freeze, [">= 12.0.0", "~> 12.0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 3.2.1", "~> 3.2"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.14.1"])
    s.add_dependency(%q<codecov>.freeze, ["~> 0.1.10"])
    s.add_dependency(%q<json>.freeze, [">= 2.0.3", "~> 2.0"])
    s.add_dependency(%q<vcr>.freeze, [">= 3.0.3", "~> 3.0"])
    s.add_dependency(%q<webmock>.freeze, [">= 2.3.2", "~> 2.3"])
    s.add_dependency(%q<faraday>.freeze, ["~> 0.12.0.1"])
    s.add_dependency(%q<faraday_middleware>.freeze, ["~> 0.11.0.1"])
    s.add_dependency(%q<thor>.freeze, ["~> 0.19.4"])
    s.add_dependency(%q<multi_json>.freeze, [">= 1.12.1", "~> 1.12"])
  end
end
