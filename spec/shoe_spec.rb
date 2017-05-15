require "spec_helper"

describe Store do
  it { should have_and_belong_to_many(:brands) }
end

describe Brand do
  it { should have_and_belong_to_many(:stores) }
end

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
end
