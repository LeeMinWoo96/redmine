# -*- encoding: utf-8 -*-
# stub: redmine_crm 0.0.53 ruby lib

Gem::Specification.new do |s|
  s.name = "redmine_crm".freeze
  s.version = "0.0.53"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["RedmineUP".freeze]
  s.date = "2020-04-07"
  s.description = "Common libraries for RedmineUP plugins (www.redmineup.com) for Redmine. Requered Redmine from http://redmine.org".freeze
  s.email = ["support@redminecrm.com".freeze]
  s.homepage = "https://www.redmineup.com".freeze
  s.licenses = ["GPL-2.0".freeze]
  s.rubygems_version = "2.6.14.4".freeze
  s.summary = "Common libraries for RedmineUP plugins for Redmine".freeze

  s.installed_by_version = "2.6.14.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<liquid>.freeze, ["< 2.6.4"])
      s.add_runtime_dependency(%q<rubyzip>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<mysql2>.freeze, [">= 0"])
      s.add_development_dependency(%q<pg>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 0"])
      s.add_dependency(%q<liquid>.freeze, ["< 2.6.4"])
      s.add_dependency(%q<rubyzip>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<mysql2>.freeze, [">= 0"])
      s.add_dependency(%q<pg>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 0"])
    s.add_dependency(%q<liquid>.freeze, ["< 2.6.4"])
    s.add_dependency(%q<rubyzip>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<mysql2>.freeze, [">= 0"])
    s.add_dependency(%q<pg>.freeze, [">= 0"])
  end
end
