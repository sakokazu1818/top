# -*- encoding: utf-8 -*-
# stub: jpmobile 5.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "jpmobile".freeze
  s.version = "5.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Shin-ichiro OGAWA".freeze, "Yoji Shidara".freeze]
  s.date = "2018-06-05"
  s.description = "A Rails plugin for mobile devices in Japan".freeze
  s.email = ["rust.stnard@gmail.com".freeze]
  s.homepage = "http://jpmobile-rails.org".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Rails plugin for mobile devices in Japan".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mail>.freeze, ["~> 2.7.0"])
      s.add_development_dependency(%q<capybara-webkit>.freeze, [">= 0"])
      s.add_development_dependency(%q<geokit>.freeze, [">= 0"])
      s.add_development_dependency(%q<git>.freeze, [">= 0"])
      s.add_development_dependency(%q<hpricot>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails>.freeze, ["~> 5.2.0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-its>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3-ruby>.freeze, [">= 0"])
    else
      s.add_dependency(%q<mail>.freeze, ["~> 2.7.0"])
      s.add_dependency(%q<capybara-webkit>.freeze, [">= 0"])
      s.add_dependency(%q<geokit>.freeze, [">= 0"])
      s.add_dependency(%q<git>.freeze, [">= 0"])
      s.add_dependency(%q<hpricot>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, ["~> 5.2.0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-its>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3-ruby>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<mail>.freeze, ["~> 2.7.0"])
    s.add_dependency(%q<capybara-webkit>.freeze, [">= 0"])
    s.add_dependency(%q<geokit>.freeze, [">= 0"])
    s.add_dependency(%q<git>.freeze, [">= 0"])
    s.add_dependency(%q<hpricot>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, ["~> 5.2.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-its>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3-ruby>.freeze, [">= 0"])
  end
end
