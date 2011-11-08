Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}
require "#{File.dirname(__FILE__)}/../lib/campfire_terminal"
Dir["#{File.dirname(__FILE__)}/../lib/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  config.mock_with :rspec
end
