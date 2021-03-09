class Order < ApplicationRecord

  belongs_to :user
  has_many :line_orders, dependent: :destroy
  
  def total_price
    line_orders.to_a.sum {|item| item.total_price}
  end

end
