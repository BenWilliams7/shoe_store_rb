require "spec_helper"

describe Store do
  it { should have_and_belong_to_many(:brands) }
end

describe("#titlecase") do
  it "should change capitalization of entries to title case" do
    store = Store.create(name: "SNEAK easy")
    expect(store.name).to eq "Sneak Easy"
  end
end
