# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require "rubble/version"

Gem::Specification.new do |s|
  s.name        = "rubble"
  s.version     = Rubble::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Adam Michela","Bill Doughty", "Rob Eanes"]
  s.email       = ["howdy@capitalthought.com"]
  s.homepage    = ""
  s.summary     = "A modular mixin for building best of breed (Ruby) web apps."
  s.description = "A modular mixin for building best of breed (Ruby) web apps.  It contains guidelines and best practices for developing HTML5/CSS3 websites."

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency("sass")

  s.add_development_dependency("rspec", ["~> 2.5"])

  s.files        = Dir.glob("lib/**/*") + %w(README.md)
  s.require_path = 'lib'
end
