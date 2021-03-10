class Product < ApplicationRecord

  has_many :line_items
  has_many :line_orders
  has_one_attached :avatar
  
  validates :title, :description, :price, :format, presence: true
  validates :title, length: {maximum: 140}
  validates :description, length: {maximum: 1000}

  
  #const pour :format des Product
  FORMAT = %w{png gif jpg}

 

end
