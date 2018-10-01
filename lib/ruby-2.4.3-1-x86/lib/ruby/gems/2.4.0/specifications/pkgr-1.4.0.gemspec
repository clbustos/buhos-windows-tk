# -*- encoding: utf-8 -*-
# stub: pkgr 1.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "pkgr".freeze
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Cyril Rohr".freeze]
  s.date = "2014-10-15"
  s.description = "Embeds your app dependencies (e.g. a specific ruby version and you gems in the case of Rails apps) into a debian package, for easy installation. Provides init scripts and more.".freeze
  s.email = ["cyril.rohr@gmail.com".freeze]
  s.executables = ["pkgr".freeze]
  s.extra_rdoc_files = ["LICENSE".freeze, "README.md".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze, "bin/pkgr".freeze]
  s.homepage = "http://github.com/crohr/pkgr".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7".freeze)
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Package any app as a debian package".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<thor>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<fpm>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<facter>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<mixlib-log>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<mixlib-shellout>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<thor>.freeze, [">= 0"])
      s.add_dependency(%q<fpm>.freeze, [">= 0"])
      s.add_dependency(%q<facter>.freeze, [">= 0"])
      s.add_dependency(%q<mixlib-log>.freeze, [">= 0"])
      s.add_dependency(%q<mixlib-shellout>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<thor>.freeze, [">= 0"])
    s.add_dependency(%q<fpm>.freeze, [">= 0"])
    s.add_dependency(%q<facter>.freeze, [">= 0"])
    s.add_dependency(%q<mixlib-log>.freeze, [">= 0"])
    s.add_dependency(%q<mixlib-shellout>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2"])
  end
end
