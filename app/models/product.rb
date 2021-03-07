class Product < ApplicationRecord

  has_many :line_items
  
  validates :title, :description, :price, :format presence: True
  validates :title, length: {maximum: 140}
  validates :description, length: {maximum: 1000}
  validates :price, numericality: {only_integer: true}
  
  #const pour :format des Product
  FORMAT = %w{png gif jpg}

end
