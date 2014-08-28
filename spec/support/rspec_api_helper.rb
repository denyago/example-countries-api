# Helps to test API controllers
# doing 'real' requests trough Rack
# and not RSpec::Rails things.
#
# Use `type: :api` tag for test suites.
module RSpecApiHelper
  require 'rack/test'
  include Rack::Test::Methods

  def app
    Rails.application
  end

  # To have same behaviour as RSpec::Rails
  alias :response :last_response
end
