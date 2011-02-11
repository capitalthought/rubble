# encoding: UTF-8
require 'rubygems'
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rake'

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new( :spec ) do |t|
  t.pattern = Dir.glob('spec/**/*_spec.rb')
  t.rspec_opts = '--format progress'
#  t.rcov = true
end

task :default => :spec

