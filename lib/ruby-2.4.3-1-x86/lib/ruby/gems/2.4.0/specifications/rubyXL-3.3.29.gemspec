# -*- encoding: utf-8 -*-
# stub: rubyXL 3.3.29 ruby lib

Gem::Specification.new do |s|
  s.name = "rubyXL".freeze
  s.version = "3.3.29"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Vivek Bhagwat".freeze, "Wesha".freeze]
  s.date = "2018-02-26"
  s.description = "rubyXL is a gem which allows the parsing, creation, and manipulation of Microsoft Excel (.xlsx/.xlsm) Documents".freeze
  s.email = "bhagwat.vivek@gmail.com".freeze
  s.extra_rdoc_files = ["LICENSE.txt".freeze, "README.rdoc".freeze]
  s.files = ["LICENSE.txt".freeze, "README.rdoc".freeze]
  s.homepage = "http://github.com/gilt/rubyXL".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "rubyXL is a gem which allows the parsing, creation, and manipulation of Microsoft Excel (.xlsx/.xlsm) Documents".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 1.4.4"])
      s.add_runtime_dependency(%q<rubyzip>.freeze, [">= 1.1.6"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<jeweler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<ruby-prof>.freeze, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>.freeze, [">= 1.4.4"])
      s.add_dependency(%q<rubyzip>.freeze, [">= 1.1.6"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<jeweler>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<ruby-prof>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>.freeze, [">= 1.4.4"])
    s.add_dependency(%q<rubyzip>.freeze, [">= 1.1.6"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<jeweler>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<ruby-prof>.freeze, [">= 0"])
  end
end
