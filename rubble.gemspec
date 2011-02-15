# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require "rubble/version"

Gem::Specification.new do |s|
  s.name        = "rubble"
  s.version     = Rubble::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Adam Michela", "Bill Doughty", "Rob Eanes"]
  s.email       = ["howdy@capitalthought.com"]
  s.homepage    = ""
  s.summary     = "A modular mixin for building best of breed (Ruby) web apps."
  s.description = "A modular mixin for building best of breed (Ruby) web apps.  It contains guidelines and best practices for developing HTML5/CSS3 websites."
  s.executables = ["rubble"]

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency("haml")
  s.add_dependency("activesupport", ["~> 3.0.0"])

  s.add_development_dependency("rspec-rails", ["~> 2.5"])
  s.add_development_dependency("spork", ["~> 0.8"])
  s.add_development_dependency("rake")
  s.add_development_dependency("rails")

  s.files        = Dir.glob("lib/**/*") + %w(README.markdown)
  s.require_path = 'lib'
end
