# -*- encoding: utf-8 -*-
# stub: ruby-xz 0.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-xz".freeze
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Marvin G\u00FClker".freeze]
  s.date = "2015-12-29"
  s.description = "These are simple Ruby bindings for the liblzma library\n(http://tukaani.org/xz/), which is best known for the\nextreme compression ratio its native XZ format achieves.\nSince FFI is used to implement the bindings, no compilation\nis needed and they should work with JRuby as well.\n".freeze
  s.email = "quintus@quintilianus.eu".freeze
  s.extra_rdoc_files = ["README.md".freeze, "HISTORY.rdoc".freeze, "COPYING".freeze, "AUTHORS".freeze]
  s.files = ["AUTHORS".freeze, "COPYING".freeze, "HISTORY.rdoc".freeze, "README.md".freeze]
  s.homepage = "http://quintus.github.io/ruby-xz".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["-t".freeze, "ruby-xz RDocs".freeze, "-m".freeze, "README.md".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.6.14".freeze
  s.summary = "XZ compression via liblzma for Ruby, using ffi.".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>.freeze, ["~> 1.9"])
      s.add_runtime_dependency(%q<io-like>.freeze, ["~> 0.3"])
      s.add_development_dependency(%q<archive-tar-minitar>.freeze, ["~> 0.5"])
    else
      s.add_dependency(%q<ffi>.freeze, ["~> 1.9"])
      s.add_dependency(%q<io-like>.freeze, ["~> 0.3"])
      s.add_dependency(%q<archive-tar-minitar>.freeze, ["~> 0.5"])
    end
  else
    s.add_dependency(%q<ffi>.freeze, ["~> 1.9"])
    s.add_dependency(%q<io-like>.freeze, ["~> 0.3"])
    s.add_dependency(%q<archive-tar-minitar>.freeze, ["~> 0.5"])
  end
end
