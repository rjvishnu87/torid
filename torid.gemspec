# DO NOT EDIT - This file is automatically generated
# Make changes to Manifest.txt and/or Rakefile and regenerate
# -*- encoding: utf-8 -*-
# stub: torid 1.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "torid"
  s.version = "1.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jeremy Hinegardner"]
  s.date = "2014-09-30"
  s.description = "Temporally Ordered IDs. Generate universally unique identifiers (UUID) that sort lexically in time order. Torid exists to solve the problem of generating UUIDs that when ordered lexically, they are also ordered temporally. I needed a way to generate ids for events that are entering a system with the following criteria: 1. Fast ID generation 2. No central coordinating server/system 3. No local storage 4. Library code, that is multiple apps on the same machine can use the same code    and they will not generate duplicate ids 5. Eventually stored in a UUID field in a database. So 128bit ids are totally    fine. The IDs that Torid generates are 128bit IDs made up of 2, 64bit parts. * 64bit microsecond level UNIX timestamp * 64bit hash of the system hostname, process id and a random value."
  s.email = "jeremy@copiousfreetime.org"
  s.extra_rdoc_files = ["CONTRIBUTING.md", "HISTORY.md", "Manifest.txt", "README.md"]
  s.files = ["CONTRIBUTING.md", "HISTORY.md", "LICENSE", "Manifest.txt", "README.md", "Rakefile", "lib/torid.rb", "lib/torid/clock.rb", "lib/torid/generator.rb", "lib/torid/uuid.rb", "tasks/default.rake", "tasks/this.rb", "test/test_clock.rb", "test/test_generator.rb", "test/test_helper.rb", "test/test_torid.rb", "test/test_uuid.rb", "test/test_version.rb"]
  s.homepage = "http://github.com/copiousfreetime/torid"
  s.licenses = ["ISC"]
  s.rdoc_options = ["--main", "README.md", "--markup", "tomdoc"]
  s.rubygems_version = "2.2.2"
  s.summary = "Temporally Ordered IDs. Generate universally unique identifiers (UUID) that sort lexically in time order."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fnv>, ["~> 0.2"])
      s.add_development_dependency(%q<rake>, ["~> 10.1"])
      s.add_development_dependency(%q<minitest>, ["~> 5.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.9"])
    else
      s.add_dependency(%q<fnv>, ["~> 0.2"])
      s.add_dependency(%q<rake>, ["~> 10.1"])
      s.add_dependency(%q<minitest>, ["~> 5.0"])
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<simplecov>, ["~> 0.9"])
    end
  else
    s.add_dependency(%q<fnv>, ["~> 0.2"])
    s.add_dependency(%q<rake>, ["~> 10.1"])
    s.add_dependency(%q<minitest>, ["~> 5.0"])
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<simplecov>, ["~> 0.9"])
  end
end
