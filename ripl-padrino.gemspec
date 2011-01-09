# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ripl/padrino"

Gem::Specification.new do |s|
  s.name        = "ripl-padrino"
  s.version     = Ripl::Padrino::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Arthur Chiu"]
  s.email       = ["mr.arthur.chiu@gmail.com"]
  s.homepage    = "http://arthurchiu.tumblr.com"
  s.summary     = %q{ripl for padrino}
  s.description = %q{ripl for the padrino framework}

  s.rubyforge_project = "ripl-padrino"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency 'ripl', '~>0.3.0'
end
