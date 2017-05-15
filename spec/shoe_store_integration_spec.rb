require "capybara/rspec"
require "./app"
require "spec_helper"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

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
