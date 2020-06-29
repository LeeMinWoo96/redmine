# -*- encoding: utf-8 -*-
# stub: redmine_extensions 0.2.16 ruby lib

Gem::Specification.new do |s|
  s.name = "redmine_extensions".freeze
  s.version = "0.2.16"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Easy Software Ltd".freeze]
  s.date = "2019-02-11"
  s.description = "Redmine Extensions provide many extended functionalities for Redmine project.".freeze
  s.email = ["info@easyredmine.com".freeze]
  s.homepage = "https://www.easyredmine.com".freeze
  s.licenses = ["GPL-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1".freeze)
  s.rubygems_version = "2.6.14.4".freeze
  s.summary = "Redmine Extensions is set of usefull features for Redmine. Main focus is on development helpers, but many users can find it helpfull".freeze

  s.installed_by_version = "2.6.14.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, ["< 6", ">= 4.2"])
      s.add_runtime_dependency(%q<actionpack>.freeze, ["< 6", ">= 4.2"])
      s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.4"])
      s.add_development_dependency(%q<capybara>.freeze, ["~> 3.3.1"])
      s.add_development_dependency(%q<factory_bot_rails>.freeze, ["~> 4.6"])
      s.add_development_dependency(%q<poltergeist>.freeze, ["~> 1.10"])
      s.add_development_dependency(%q<database_cleaner>.freeze, ["~> 1.5"])
    else
      s.add_dependency(%q<rails>.freeze, ["< 6", ">= 4.2"])
      s.add_dependency(%q<actionpack>.freeze, ["< 6", ">= 4.2"])
      s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.4"])
      s.add_dependency(%q<capybara>.freeze, ["~> 3.3.1"])
      s.add_dependency(%q<factory_bot_rails>.freeze, ["~> 4.6"])
      s.add_dependency(%q<poltergeist>.freeze, ["~> 1.10"])
      s.add_dependency(%q<database_cleaner>.freeze, ["~> 1.5"])
    end
  else
    s.add_dependency(%q<rails>.freeze, ["< 6", ">= 4.2"])
    s.add_dependency(%q<actionpack>.freeze, ["< 6", ">= 4.2"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.4"])
    s.add_dependency(%q<capybara>.freeze, ["~> 3.3.1"])
    s.add_dependency(%q<factory_bot_rails>.freeze, ["~> 4.6"])
    s.add_dependency(%q<poltergeist>.freeze, ["~> 1.10"])
    s.add_dependency(%q<database_cleaner>.freeze, ["~> 1.5"])
  end
end
