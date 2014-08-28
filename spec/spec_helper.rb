ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)

require 'shoulda/matchers'

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

FactoryGirl.find_definitions

RSpec.configure do |config|
  config.include RSpecApiHelper, type: :api
  config.include FactoryGirl::Syntax::Methods
end
