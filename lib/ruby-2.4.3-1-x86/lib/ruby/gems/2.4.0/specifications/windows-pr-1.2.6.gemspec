# -*- encoding: utf-8 -*-
# stub: windows-pr 1.2.6 ruby lib

Gem::Specification.new do |s|
  s.name = "windows-pr".freeze
  s.version = "1.2.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel J. Berger".freeze, "Park Heesob".freeze, "Hiroshi Hatake".freeze]
  s.date = "2017-01-18"
  s.description = "    The windows-pr library is a collection of Windows functions and constants\n    pre-defined for you using the windows-api library. It also autogenerates\n    explicit ANSI and Wide character versions of those functions, as well as\n    constants that can be used as methods, e.g. CloseHandle() instead of\n    CloseHandle.call().\n".freeze
  s.email = "djberg96@gmail.com".freeze
  s.extra_rdoc_files = ["MANIFEST".freeze, "README".freeze, "CHANGES".freeze, "doc/conversion_guide.txt".freeze]
  s.files = ["CHANGES".freeze, "MANIFEST".freeze, "README".freeze, "doc/conversion_guide.txt".freeze]
  s.homepage = "https://github.com/djberg96/windows-pr".freeze
  s.licenses = ["Artistic 2.0".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Windows functions and constants bundled via Win32::API".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.9.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<windows-api>.freeze, [">= 0.4.0"])
      s.add_runtime_dependency(%q<win32-api>.freeze, [">= 1.4.5"])
    else
      s.add_dependency(%q<minitest>.freeze, ["~> 5.9.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<windows-api>.freeze, [">= 0.4.0"])
      s.add_dependency(%q<win32-api>.freeze, [">= 1.4.5"])
    end
  else
    s.add_dependency(%q<minitest>.freeze, ["~> 5.9.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<windows-api>.freeze, [">= 0.4.0"])
    s.add_dependency(%q<win32-api>.freeze, [">= 1.4.5"])
  end
end
