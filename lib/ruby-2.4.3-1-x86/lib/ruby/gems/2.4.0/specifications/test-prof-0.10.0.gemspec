# -*- encoding: utf-8 -*-
# stub: test-prof 0.10.0 ruby lib

Gem::Specification.new do |s|
  s.name = "test-prof".freeze
  s.version = "0.10.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "http://github.com/palkan/test-prof/issues", "changelog_uri" => "https://github.com/palkan/test-prof/blob/master/CHANGELOG.md", "documentation_uri" => "https://test-prof.evilmartians.io/", "homepage_uri" => "https://test-prof.evilmartians.io/", "source_code_uri" => "http://github.com/palkan/test-prof" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Vladimir Dementyev".freeze]
  s.date = "2019-08-20"
  s.description = "\n    Ruby applications tests profiling tools.\n\n    Contains tools to analyze factories usage, integrate with Ruby profilers,\n    profile your examples using ActiveSupport notifications (if any) and\n    statically analyze your code with custom RuboCop cops.\n  ".freeze
  s.email = ["dementiev.vm@gmail.com".freeze]
  s.homepage = "http://github.com/palkan/test-prof".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Ruby applications tests profiling tools".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.10"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4"])
      s.add_development_dependency(%q<isolator>.freeze, ["~> 0.6"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.9"])
      s.add_development_dependency(%q<rubocop-md>.freeze, ["~> 0.2"])
      s.add_development_dependency(%q<standard>.freeze, ["~> 0.1.0"])
    else
      s.add_dependency(%q<bundler>.freeze, [">= 1.10"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
      s.add_dependency(%q<isolator>.freeze, ["~> 0.6"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.9"])
      s.add_dependency(%q<rubocop-md>.freeze, ["~> 0.2"])
      s.add_dependency(%q<standard>.freeze, ["~> 0.1.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, [">= 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_dependency(%q<isolator>.freeze, ["~> 0.6"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.9"])
    s.add_dependency(%q<rubocop-md>.freeze, ["~> 0.2"])
    s.add_dependency(%q<standard>.freeze, ["~> 0.1.0"])
  end
end
