require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('sinatra/activerecord')
require('./lib/shoe_store')
require('pg')

get "/" do
  erb :index
end
