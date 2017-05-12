require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('sinatra/activerecord')
require('./lib/shoe_store')
require('pg')

get "/" do
  erb :index
end

get('/stores') do
  @store_message = Store.all.length > 0 ? "Select a store" : "Add a store below"
  erb :shoe_stores
end

post "/stores" do
  store_name = params.fetch("store-name")
  Store.create({name: store_name})
  redirect "/stores"
end
