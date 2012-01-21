# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "instapi/version"

Gem::Specification.new do |s|
  s.name        = "instapi"
  s.version     = Instapi::VERSION
  s.authors     = ["jugyo"]
  s.email       = ["jugyo.org@gmail.com"]
  s.homepage    = "https://github.com/jugyo/instapi"
  s.summary     = %q{Wrapper of the Instapaper Simple API. Instaピ!}
  s.description = %q{Wrapper of the Instapaper Simple API. Instaピ!}

  s.rubyforge_project = "instapi"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "httpclient"
  s.add_runtime_dependency "nokogiri"
end
