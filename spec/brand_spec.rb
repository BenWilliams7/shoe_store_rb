require "spec_helper"

describe Brand do
  it { should have_and_belong_to_many(:stores) }
end


describe("#titlecase") do
  it "should change capitalization of entries to title case" do
    brand = Brand.create(logo: "BENGAL dimension SIX", price: 20)
    expect(brand.logo).to eq "Bengal Dimension Six"
  end
end

describe("#monetary") do
  it "should convert entered price to money notation" do
    brand = Brand.create(logo: "BENGAL dimension SIX", price: 20)
    expect(brand.monetary(20)).to eq "$20.00"
  end
end
