class Store < ActiveRecord::Base
  has_and_belongs_to_many :brands
  before_save(:titlecase)
  validates(:name, {:presence => true, uniqueness: true, :length => {:maximum => 100}})


  def titlecase
    self.name=(name.split(/(\W)/).map(&:capitalize).join)
  end

end

class BrandStore < ActiveRecord::Base
  belongs_to :brands
  belongs_to :stores
end

class Brand < ActiveRecord::Base
  has_and_belongs_to_many :stores
  before_save(:titlecase)
  before_save(:to_money)
  validates(:logo, {:presence => true, uniqueness: true, :length => { :maximum => 100}})
  validates(:price, :presence => true)

  def titlecase
    self.logo=(logo.split(/(\W)/).map(&:capitalize).join)
  end

  def monetary(price)
    "$" + sprintf('%.2f', price)
  end

end
