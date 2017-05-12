require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('sinatra/activerecord')
require('./lib/shoe_store')
require('pg')

get "/" do
  erb :index
end

# store addition and display
get('/stores') do
  @store_message = Store.all.length > 0 ? "Select a store" : "Add a store below"
  erb :shoe_stores
end

post "/stores" do
  store_name = params.fetch("store-name")
  @store = Store.create({name: store_name})
  redirect "/stores"
end

# Update and delete stores

get "/edit_store/:id" do
  store_id = params['id'].to_i
  @store = Store.find(store_id)
  erb :shoe_stores_edit
end

patch '/rename_store/:id' do
  name = params['name']
  id = params['id'].to_i
  store = Store.find(id)
  @store = store.update({name: name})
  redirect "/edit_store/#{store.id}"
end

delete '/store/delete/:id' do
  store = Store.find(params['id'].to_i)
  store.delete
  redirect '/stores'
end

# brand addition and display

get('/brands') do
  @brand_message = Brand.all.length > 0 ? "Select a brand" : "Add a brand below"
  erb :shoe_brands
end

post "/brands" do
  brand_name = params.fetch("brand-name")
  Brand.create({logo: brand_name})
  redirect "/brands"
end
