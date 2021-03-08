class Product < ApplicationRecord

  before_destroy :not_referenced_by_any_line_item
  has_many :line_items
  
  validates :title, :description, :price, :format, presence: true
  validates :title, length: {maximum: 140}
  validates :description, length: {maximum: 1000}
  validates :price, numericality: {only_integer: true}
  
  #const pour :format des Product
  FORMAT = %w{png gif jpg}

  private

  def not_referenced_by_any_line_item
    unless line_item.empty?
      errors.add(:base, "line items present")
      throw :abort
    end
  end

end
