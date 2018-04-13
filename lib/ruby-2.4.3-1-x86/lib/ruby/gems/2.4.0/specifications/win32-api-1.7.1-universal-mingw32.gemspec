# -*- encoding: utf-8 -*-
# stub: win32-api 1.7.1 universal-mingw32 lib

Gem::Specification.new do |s|
  s.name = "win32-api".freeze
  s.version = "1.7.1"
  s.platform = "universal-mingw32".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel J. Berger".freeze, "Park Heesob".freeze, "Hiroshi Hatake".freeze]
  s.date = "2018-01-04"
  s.description = "    The Win32::API library is meant as a replacement for the Win32API\n    library that ships as part of the standard library. It contains several\n    advantages over Win32API, including callback support, raw function\n    pointers, an additional string type, and more.\n".freeze
  s.email = "djberg96@gmail.com".freeze
  s.extra_rdoc_files = ["README".freeze, "CHANGES".freeze, "MANIFEST".freeze, "ext/win32/api.c".freeze]
  s.files = ["CHANGES".freeze, "MANIFEST".freeze, "README".freeze, "ext/win32/api.c".freeze]
  s.homepage = "http://github.com/djberg96/win32-api".freeze
  s.licenses = ["Artistic-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.2".freeze)
  s.rubygems_version = "2.6.14".freeze
  s.summary = "A superior replacement for Win32API".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<test-unit>.freeze, [">= 2.5.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<test-unit>.freeze, [">= 2.5.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<test-unit>.freeze, [">= 2.5.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
