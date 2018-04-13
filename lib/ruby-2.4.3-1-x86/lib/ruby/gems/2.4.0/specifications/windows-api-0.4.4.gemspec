# -*- encoding: utf-8 -*-
# stub: windows-api 0.4.4 ruby lib

Gem::Specification.new do |s|
  s.name = "windows-api".freeze
  s.version = "0.4.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel J. Berger".freeze]
  s.date = "2015-03-19"
  s.description = "    The windows-api library provides features over and above the basic\n    interface provided by the win32-api library. Features included automatic\n    constant generation, automatic defintion of ANSI and Unicode methods,\n    special handling of functions that return a boolean value, and the\n    ability to use native Windows type declarations.\n".freeze
  s.email = "djberg96@gmail.com".freeze
  s.extra_rdoc_files = ["README".freeze, "CHANGES".freeze, "MANIFEST".freeze]
  s.files = ["CHANGES".freeze, "MANIFEST".freeze, "README".freeze]
  s.homepage = "https://github.com/djberg96/windows-api".freeze
  s.licenses = ["Artistic 2.0".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "An easier way to create methods using Win32::API".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<win32-api>.freeze, [">= 1.4.5"])
      s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
    else
      s.add_dependency(%q<win32-api>.freeze, [">= 1.4.5"])
      s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<win32-api>.freeze, [">= 1.4.5"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
  end
end
