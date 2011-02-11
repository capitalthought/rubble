$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

SUPPORT = File.join(File.dirname(__FILE__), "support")
$LOAD_PATH.unshift(SUPPORT)

require "rubble"
require "rspec"

Dir[ File.join(SUPPORT, "*.rb") ].each { |file| require File.basename(file) }

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"
require "rspec/rails"
    
ActionMailer::Base.delivery_method = :test
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.default_url_options[:host] = "test.com"

Rails.backtrace_cleaner.remove_silencers!

Rspec.configure do |config|
  config.mock_with(:rspec)
end

