# -*- encoding: utf-8 -*-
# stub: yard-sinatra 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "yard-sinatra".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Konstantin Haase".freeze]
  s.date = "2011-08-17"
  s.description = "Displays Sinatra routes (including comments) in YARD output.".freeze
  s.email = "konstantin.mailinglists@googlemail.com".freeze
  s.homepage = "http://github.com/rkh/yard-sinatra".freeze
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Displays Sinatra routes (including comments) in YARD output.".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<yard>.freeze, ["~> 0.7"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.6"])
    else
      s.add_dependency(%q<yard>.freeze, ["~> 0.7"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.6"])
    end
  else
    s.add_dependency(%q<yard>.freeze, ["~> 0.7"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.6"])
  end
end
