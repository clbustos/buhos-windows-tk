# -*- encoding: utf-8 -*-
# stub: tf-idf-similarity 0.1.6 ruby lib

Gem::Specification.new do |s|
  s.name = "tf-idf-similarity".freeze
  s.version = "0.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["James McKinney".freeze]
  s.date = "2017-03-07"
  s.homepage = "https://github.com/jpmckinney/tf-idf-similarity".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Calculates the similarity between texts using tf*idf".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<unicode_utils>.freeze, ["~> 1.4"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_development_dependency(%q<json>.freeze, ["< 2"])
      s.add_development_dependency(%q<rake>.freeze, ["< 12"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.10"])
    else
      s.add_dependency(%q<unicode_utils>.freeze, ["~> 1.4"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<json>.freeze, ["< 2"])
      s.add_dependency(%q<rake>.freeze, ["< 12"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.10"])
    end
  else
    s.add_dependency(%q<unicode_utils>.freeze, ["~> 1.4"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<json>.freeze, ["< 2"])
    s.add_dependency(%q<rake>.freeze, ["< 12"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.10"])
  end
end
