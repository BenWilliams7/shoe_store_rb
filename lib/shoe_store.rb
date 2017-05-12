class Store < ActiveRecord::Base
  has_and_belongs_to_many :brands
end

class BrandStore < ActiveRecord::Base
  belongs_to :brands
  belongs_to :stores
end

class Brand < ActiveRecord::Base
  has_and_belongs_to_many :stores
end