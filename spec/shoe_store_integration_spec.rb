require "capybara/rspec"
require "./app"
require "spec_helper"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# Tests for adding and deleting stores

describe 'modifying shoe stores', {:type => :feature} do
  it 'can create and modify a shoe store via user input' do
    visit '/'
    click_link 'View Stores'
    fill_in 'store-name', :with => 'Sneak Easy'
    click_button 'Add Store'
    click_link 'Sneak Easy'
    fill_in 'name', :with => 'Sneak Easier'
    click_button 'Update Name'
    expect(page).to have_content 'Sneak Easier'
  end
  it 'can delete a shoe store via user input' do
    visit '/'
    click_link 'View Stores'
    fill_in 'store-name', :with => 'Sneak Easy'
    click_button 'Add Store'
    click_link 'Sneak Easy'
    click_button 'Delete This Store'
    expect(page).to have_no_content 'Sneak Easy'
  end
end

describe 'brand addition path', {:type => :feature} do
  it 'can create a brand with correct pricing' do
    visit '/'
    click_link 'View Brands'
    fill_in 'brand-name', :with => 'Bengal Dimension Six'
    fill_in 'brand-price', :with => '60'
    click_button 'Add Brand'
    expect(page).to have_content 'Bengal Dimension Six $60.00'
  end
end
describe 'brand assignment path', {:type => :feature} do
  it 'can assign a brand to a store' do
    visit '/'
    click_link 'View Brands'
    fill_in 'brand-name', :with => 'Bengal Dimension Six'
    fill_in 'brand-price', :with => '60'
    click_button 'Add Brand'
    click_link 'View Stores'
    fill_in 'store-name', :with => 'Sneak Easy'
    click_button 'Add Store'
    click_link 'Sneak Easy'
    click_link 'Click to add a brand to this store'
    check 'Bengal Dimension Six'
    click_button 'Add'
    expect(page).to have_content 'Bengal Dimension Six'
  end
end
