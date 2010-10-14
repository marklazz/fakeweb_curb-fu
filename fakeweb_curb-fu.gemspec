# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{fakeweb_curb-fu}
  s.version = "0.0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marcelo Giorgi"]
  s.date = %q{2010-10-14}
  s.description = %q{}
  s.email = %q{marklazz.uy@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/fakeweb_curb-fu.rb", "tasks/fakeweb_curb-fu.rake"]
  s.files = ["README.rdoc", "Rakefile", "lib/fakeweb_curb-fu.rb", "spec/lib/fakeweb_curb-fu_spec.rb", "spec/spec_helper.rb", "tasks/fakeweb_curb-fu.rake", "Manifest", "fakeweb_curb-fu.gemspec"]
  s.homepage = %q{http://github.com/marklazz/fakeweb_curb-fu}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Fakeweb_curb-fu", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{fakeweb_curb-fu}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<spec>, [">= 0"])
    else
      s.add_dependency(%q<spec>, [">= 0"])
    end
  else
    s.add_dependency(%q<spec>, [">= 0"])
  end
end
