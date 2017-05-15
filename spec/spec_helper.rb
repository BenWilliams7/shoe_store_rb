ENV["RACK_ENV"] = "test"
require("rspec")
require("pg")
require("sinatra/activerecord")
require("shoe_store")
require "shoulda-matchers"
require "capybara"


RSpec.configure do |config|
  config.after(:each) do
    Store.all.each do |recipe|
      recipe.destroy
    end
    Brand.all.each do |recipe|
      recipe.destroy
    end
  end
end
