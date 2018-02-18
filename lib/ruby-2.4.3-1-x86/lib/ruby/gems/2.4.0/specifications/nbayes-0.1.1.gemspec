# -*- encoding: utf-8 -*-
# stub: nbayes 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "nbayes".freeze
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["oasic".freeze]
  s.date = "2012-07-13"
  s.description = "Ruby implementation of Naive Bayes that generates true probabilities per class, works with many token types, and provides lots of bells and whistles while being optimized for performance.".freeze
  s.email = "j@oasic.net".freeze
  s.extra_rdoc_files = ["LICENSE.txt".freeze, "README.rdoc".freeze]
  s.files = ["LICENSE.txt".freeze, "README.rdoc".freeze]
  s.homepage = "http://github.com/oasic/nbayes".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Full-featured Ruby implementation of Naive Bayes classifier".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, [">= 2.8.0"])
      s.add_development_dependency(%q<rdoc>.freeze, [">= 3.12"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.0.0"])
      s.add_development_dependency(%q<jeweler>.freeze, [">= 1.8.3"])
    else
      s.add_dependency(%q<rspec>.freeze, [">= 2.8.0"])
      s.add_dependency(%q<rdoc>.freeze, [">= 3.12"])
      s.add_dependency(%q<bundler>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<jeweler>.freeze, [">= 1.8.3"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, [">= 2.8.0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 3.12"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<jeweler>.freeze, [">= 1.8.3"])
  end
end
