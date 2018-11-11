# -*- encoding: utf-8 -*-
# stub: haml_lint 0.28.0 ruby lib

Gem::Specification.new do |s|
  s.name = "haml_lint"
  s.version = "0.28.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Brigade Engineering", "Shane da Silva"]
  s.date = "2018-06-07"
  s.description = "Configurable tool for writing clean and consistent HAML"
  s.email = ["eng@brigade.com", "shane@dasilva.io"]
  s.executables = ["haml-lint"]
  s.files = ["bin/haml-lint"]
  s.homepage = "https://github.com/brigade/haml-lint"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.0")
  s.rubygems_version = "2.5.1"
  s.summary = "HAML lint tool"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<haml>, ["< 5.1", ">= 4.0"])
      s.add_runtime_dependency(%q<rainbow>, [">= 0"])
      s.add_runtime_dependency(%q<rake>, ["< 13", ">= 10"])
      s.add_runtime_dependency(%q<rubocop>, [">= 0.50.0"])
      s.add_runtime_dependency(%q<sysexits>, ["~> 1.1"])
    else
      s.add_dependency(%q<haml>, ["< 5.1", ">= 4.0"])
      s.add_dependency(%q<rainbow>, [">= 0"])
      s.add_dependency(%q<rake>, ["< 13", ">= 10"])
      s.add_dependency(%q<rubocop>, [">= 0.50.0"])
      s.add_dependency(%q<sysexits>, ["~> 1.1"])
    end
  else
    s.add_dependency(%q<haml>, ["< 5.1", ">= 4.0"])
    s.add_dependency(%q<rainbow>, [">= 0"])
    s.add_dependency(%q<rake>, ["< 13", ">= 10"])
    s.add_dependency(%q<rubocop>, [">= 0.50.0"])
    s.add_dependency(%q<sysexits>, ["~> 1.1"])
  end
end
