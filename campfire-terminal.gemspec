# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "campfire_terminal/version"

Gem::Specification.new do |s|
  s.name        = "campfire-terminal"
  s.version     = CampfireTerminal::VERSION
  s.authors     = ["Yi Wen"]
  s.email       = ["hayafirst@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_runtime_dependency(%q<thor>, [">= 0"])
end
