$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

SUPPORT = File.join(File.dirname(__FILE__), "support")
$LOAD_PATH.unshift(SUPPORT)

require "rubble"
require "rspec"

Dir[ File.join(SUPPORT, "*.rb") ].each { |file| require File.basename(file) }

Rspec.configure do |config|
  config.mock_with(:rspec)
end


