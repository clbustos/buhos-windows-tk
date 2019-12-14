# -*- encoding: utf-8 -*-
# stub: mutant 0.8.24 ruby lib

Gem::Specification.new do |s|
  s.name = "mutant".freeze
  s.version = "0.8.24"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Markus Schirp".freeze]
  s.date = "2018-12-29"
  s.description = "Mutation testing for ruby".freeze
  s.email = ["mbj@schirp-dso.com".freeze]
  s.executables = ["mutant".freeze]
  s.extra_rdoc_files = ["LICENSE".freeze]
  s.files = ["LICENSE".freeze, "bin/mutant".freeze]
  s.homepage = "https://github.com/mbj/mutant".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Mutation testing tool for ruby under MRI and Rubinius".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<abstract_type>.freeze, ["~> 0.0.7"])
      s.add_runtime_dependency(%q<adamantium>.freeze, ["~> 0.2.0"])
      s.add_runtime_dependency(%q<anima>.freeze, ["~> 0.3.0"])
      s.add_runtime_dependency(%q<ast>.freeze, ["~> 2.2"])
      s.add_runtime_dependency(%q<concord>.freeze, ["~> 0.1.5"])
      s.add_runtime_dependency(%q<diff-lcs>.freeze, ["~> 1.3"])
      s.add_runtime_dependency(%q<equalizer>.freeze, ["~> 0.0.9"])
      s.add_runtime_dependency(%q<ice_nine>.freeze, ["~> 0.11.1"])
      s.add_runtime_dependency(%q<memoizable>.freeze, ["~> 0.4.2"])
      s.add_runtime_dependency(%q<morpher>.freeze, ["~> 0.2.6"])
      s.add_runtime_dependency(%q<parser>.freeze, ["~> 2.5.1"])
      s.add_runtime_dependency(%q<procto>.freeze, ["~> 0.0.2"])
      s.add_runtime_dependency(%q<regexp_parser>.freeze, ["~> 1.2"])
      s.add_runtime_dependency(%q<unparser>.freeze, ["~> 0.4.2"])
      s.add_development_dependency(%q<devtools>.freeze, ["~> 0.1.22"])
      s.add_development_dependency(%q<parallel>.freeze, ["~> 1.3"])
    else
      s.add_dependency(%q<abstract_type>.freeze, ["~> 0.0.7"])
      s.add_dependency(%q<adamantium>.freeze, ["~> 0.2.0"])
      s.add_dependency(%q<anima>.freeze, ["~> 0.3.0"])
      s.add_dependency(%q<ast>.freeze, ["~> 2.2"])
      s.add_dependency(%q<concord>.freeze, ["~> 0.1.5"])
      s.add_dependency(%q<diff-lcs>.freeze, ["~> 1.3"])
      s.add_dependency(%q<equalizer>.freeze, ["~> 0.0.9"])
      s.add_dependency(%q<ice_nine>.freeze, ["~> 0.11.1"])
      s.add_dependency(%q<memoizable>.freeze, ["~> 0.4.2"])
      s.add_dependency(%q<morpher>.freeze, ["~> 0.2.6"])
      s.add_dependency(%q<parser>.freeze, ["~> 2.5.1"])
      s.add_dependency(%q<procto>.freeze, ["~> 0.0.2"])
      s.add_dependency(%q<regexp_parser>.freeze, ["~> 1.2"])
      s.add_dependency(%q<unparser>.freeze, ["~> 0.4.2"])
      s.add_dependency(%q<devtools>.freeze, ["~> 0.1.22"])
      s.add_dependency(%q<parallel>.freeze, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<abstract_type>.freeze, ["~> 0.0.7"])
    s.add_dependency(%q<adamantium>.freeze, ["~> 0.2.0"])
    s.add_dependency(%q<anima>.freeze, ["~> 0.3.0"])
    s.add_dependency(%q<ast>.freeze, ["~> 2.2"])
    s.add_dependency(%q<concord>.freeze, ["~> 0.1.5"])
    s.add_dependency(%q<diff-lcs>.freeze, ["~> 1.3"])
    s.add_dependency(%q<equalizer>.freeze, ["~> 0.0.9"])
    s.add_dependency(%q<ice_nine>.freeze, ["~> 0.11.1"])
    s.add_dependency(%q<memoizable>.freeze, ["~> 0.4.2"])
    s.add_dependency(%q<morpher>.freeze, ["~> 0.2.6"])
    s.add_dependency(%q<parser>.freeze, ["~> 2.5.1"])
    s.add_dependency(%q<procto>.freeze, ["~> 0.0.2"])
    s.add_dependency(%q<regexp_parser>.freeze, ["~> 1.2"])
    s.add_dependency(%q<unparser>.freeze, ["~> 0.4.2"])
    s.add_dependency(%q<devtools>.freeze, ["~> 0.1.22"])
    s.add_dependency(%q<parallel>.freeze, ["~> 1.3"])
  end
end
