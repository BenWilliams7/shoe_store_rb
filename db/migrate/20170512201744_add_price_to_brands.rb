class AddPriceToBrands < ActiveRecord::Migration[5.1]
  def change
    add_column(:brands, :price, :integer)
  end
end
