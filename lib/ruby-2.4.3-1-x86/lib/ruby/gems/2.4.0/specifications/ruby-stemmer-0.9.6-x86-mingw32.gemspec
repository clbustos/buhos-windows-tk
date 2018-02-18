# -*- encoding: utf-8 -*-
# stub: ruby-stemmer 0.9.6 x86-mingw32 lib

Gem::Specification.new do |s|
  s.name = "ruby-stemmer".freeze
  s.version = "0.9.6"
  s.platform = "x86-mingw32".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aurelian Oancea".freeze, "Yury Korolev".freeze]
  s.date = "2015-02-27"
  s.description = "Expose the bundled libstemmer_c library to Ruby.".freeze
  s.email = "oancea@gmail.com".freeze
  s.extra_rdoc_files = ["README.rdoc".freeze]
  s.files = ["README.rdoc".freeze]
  s.homepage = "http://github.com/aurelian/ruby-stemmer".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7".freeze)
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Expose libstemmer_c to Ruby.".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 0.9"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.5"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 4.2"])
    else
      s.add_dependency(%q<rake-compiler>.freeze, ["~> 0.9"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.5"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 4.2"])
    end
  else
    s.add_dependency(%q<rake-compiler>.freeze, ["~> 0.9"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.5"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 4.2"])
  end
end
