# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{any_data}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Tucker"]
  s.date = %q{2009-01-01}
  s.description = %q{Small helper which provides and IO like ruby's DATA for $0, but for any file.}
  s.email = %q{raggi@rubyforge.org}
  s.extra_rdoc_files = ["History.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "lib/any_data.rb", "tasks/autospec.rake", "tasks/bones.rake", "tasks/gem.rake", "tasks/git.rake", "tasks/manifest.rake", "tasks/notes.rake", "tasks/post_load.rake", "tasks/rdoc.rake", "tasks/rubyforge.rake", "tasks/setup.rb", "tasks/test.rake", "test/end_data.rb", "test/helper.rb", "test/runner", "test/spec_any_data.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/raggi/any_data}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{libraggi}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Small helper which provides and IO like ruby's DATA for $0, but for any file}
  s.test_files = ["test/spec_any_data.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<bones>, [">= 0"])
      s.add_development_dependency(%q<bacon>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bones>, [">= 0"])
      s.add_dependency(%q<bacon>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bones>, [">= 0"])
    s.add_dependency(%q<bacon>, [">= 0"])
  end
end
