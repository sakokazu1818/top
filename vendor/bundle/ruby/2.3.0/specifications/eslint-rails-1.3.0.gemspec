# -*- encoding: utf-8 -*-
# stub: eslint-rails 1.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "eslint-rails"
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Justin Force", "Jon Kessler"]
  s.date = "2017-05-07"
  s.description = "A Rails wrapper for ESLint."
  s.email = ["justin.force@appfolio.com", "jon.kessler@appfolio.com"]
  s.homepage = "https://github.com/appfolio/eslint-rails"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.5.1"
  s.summary = "A Rails wrapper for ESLint."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.2"])
      s.add_runtime_dependency(%q<execjs>, [">= 0"])
      s.add_runtime_dependency(%q<colorize>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<therubyracer>, [">= 0"])
    else
      s.add_dependency(%q<railties>, [">= 3.2"])
      s.add_dependency(%q<execjs>, [">= 0"])
      s.add_dependency(%q<colorize>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<therubyracer>, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.2"])
    s.add_dependency(%q<execjs>, [">= 0"])
    s.add_dependency(%q<colorize>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<therubyracer>, [">= 0"])
  end
end
