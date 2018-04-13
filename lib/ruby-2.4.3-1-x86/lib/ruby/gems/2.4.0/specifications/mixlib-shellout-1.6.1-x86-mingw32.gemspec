# -*- encoding: utf-8 -*-
# stub: mixlib-shellout 1.6.1 x86-mingw32 lib

Gem::Specification.new do |s|
  s.name = "mixlib-shellout".freeze
  s.version = "1.6.1"
  s.platform = "x86-mingw32".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Opscode".freeze]
  s.date = "2014-12-01"
  s.description = "Run external commands on Unix or Windows".freeze
  s.email = "info@opscode.com".freeze
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "http://wiki.opscode.com/".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Run external commands on Unix or Windows".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<win32-process>.freeze, ["~> 0.7.1"])
      s.add_runtime_dependency(%q<windows-pr>.freeze, ["~> 1.2.2"])
    else
      s.add_dependency(%q<rspec>.freeze, ["~> 2.0"])
      s.add_dependency(%q<win32-process>.freeze, ["~> 0.7.1"])
      s.add_dependency(%q<windows-pr>.freeze, ["~> 1.2.2"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 2.0"])
    s.add_dependency(%q<win32-process>.freeze, ["~> 0.7.1"])
    s.add_dependency(%q<windows-pr>.freeze, ["~> 1.2.2"])
  end
end
