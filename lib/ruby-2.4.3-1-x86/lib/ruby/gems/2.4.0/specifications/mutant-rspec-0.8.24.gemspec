# -*- encoding: utf-8 -*-
# stub: mutant-rspec 0.8.24 ruby lib

Gem::Specification.new do |s|
  s.name = "mutant-rspec".freeze
  s.version = "0.8.24"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Markus Schirp".freeze]
  s.date = "2018-12-29"
  s.description = "Rspec integration for mutant".freeze
  s.email = ["mbj@schirp-dso.com".freeze]
  s.extra_rdoc_files = ["LICENSE".freeze]
  s.files = ["LICENSE".freeze]
  s.homepage = "https://github.com/mbj/mutant".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Rspec integration for mutant".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mutant>.freeze, ["~> 0.8.24"])
      s.add_runtime_dependency(%q<rspec-core>.freeze, ["< 4.0.0", ">= 3.4.0"])
    else
      s.add_dependency(%q<mutant>.freeze, ["~> 0.8.24"])
      s.add_dependency(%q<rspec-core>.freeze, ["< 4.0.0", ">= 3.4.0"])
    end
  else
    s.add_dependency(%q<mutant>.freeze, ["~> 0.8.24"])
    s.add_dependency(%q<rspec-core>.freeze, ["< 4.0.0", ">= 3.4.0"])
  end
end
