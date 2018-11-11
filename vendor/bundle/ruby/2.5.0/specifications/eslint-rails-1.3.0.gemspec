# -*- encoding: utf-8 -*-
# stub: eslint-rails 1.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "eslint-rails".freeze
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Justin Force".freeze, "Jon Kessler".freeze]
  s.date = "2017-05-07"
  s.description = "A Rails wrapper for ESLint.".freeze
  s.email = ["justin.force@appfolio.com".freeze, "jon.kessler@appfolio.com".freeze]
  s.homepage = "https://github.com/appfolio/eslint-rails".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "A Rails wrapper for ESLint.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.2"])
      s.add_runtime_dependency(%q<execjs>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<colorize>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<therubyracer>.freeze, [">= 0"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 3.2"])
      s.add_dependency(%q<execjs>.freeze, [">= 0"])
      s.add_dependency(%q<colorize>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<therubyracer>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.2"])
    s.add_dependency(%q<execjs>.freeze, [">= 0"])
    s.add_dependency(%q<colorize>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<therubyracer>.freeze, [">= 0"])
  end
end
