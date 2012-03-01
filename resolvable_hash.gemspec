
$:.push File.expand_path("../lib", __FILE__)
require "resolvable_hash/version"

Gem::Specification.new do |s|
  s.name        = "resolvable_hash"
  s.version     = ResolvableHash::VERSION
  s.authors     = ["Benjamin Vetter"]
  s.email       = ["vetter@flakks.com"]
  s.homepage    = ""
  s.summary     = %q{Resolve inner references within a hash}
  s.description = %q{Resolve references to other items within a hash}

  s.rubyforge_project = "resolvable_hash"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
end
