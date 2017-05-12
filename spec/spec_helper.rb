ENV["RACK_ENV"] = "test"
require("rspec")
require("pg")
require("sinatra/activerecord")
require("shoe_store")
require "shoulda-matchers"


RSpec.configure do |config|
  config.after(:each) do

  end
