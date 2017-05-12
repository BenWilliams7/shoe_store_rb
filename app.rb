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

get "store/:id" do
  @store = Store.find(params['id'].to_i)
  erb :shoe_stores
end

# Update and delete stores

delete '/store/delete/:id' do
  store = Store.find(params['id'].to_i)
  store.delete
  redirect '/'
end

get '/store/edit/:id' do
  @store = Store.find(params['id'].to_i)
  erb :shoe_store_edit
end

patch '/rename_store/:id' do
  @store = Store.find(params['id'].to_i)
  name = params['name']
  @store.update(name: name)
  # logo = params['logo']
  # @store.brands.first.update(logo: logo)
  @store = Store.find(params['id'].to_i)
  if @store.update(name: name)
    erb :store
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
