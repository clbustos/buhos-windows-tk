# -*- encoding: utf-8 -*-
# stub: anima 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "anima".freeze
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Markus Schirp".freeze]
  s.date = "2015-09-04"
  s.email = "mbj@schirp-dso.com".freeze
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze]
  s.homepage = "http://github.com/mbj/anima".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Initialize object attributes via attributes hash".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<adamantium>.freeze, ["~> 0.2"])
      s.add_runtime_dependency(%q<equalizer>.freeze, ["~> 0.0.11"])
      s.add_runtime_dependency(%q<abstract_type>.freeze, ["~> 0.0.7"])
    else
      s.add_dependency(%q<adamantium>.freeze, ["~> 0.2"])
      s.add_dependency(%q<equalizer>.freeze, ["~> 0.0.11"])
      s.add_dependency(%q<abstract_type>.freeze, ["~> 0.0.7"])
    end
  else
    s.add_dependency(%q<adamantium>.freeze, ["~> 0.2"])
    s.add_dependency(%q<equalizer>.freeze, ["~> 0.0.11"])
    s.add_dependency(%q<abstract_type>.freeze, ["~> 0.0.7"])
  end
end
