class Product < ApplicationRecord

  has_many :line_items
  has_many :line_orders
  has_one_attached :avatar
  
  validates :title, :description, :price, :format, presence: true
  validates :title, length: {maximum: 140}
  validates :description, length: {maximum: 1000}


  # after_create :test_email_jet


  # def test_email_jet
  #   UserMailer.mailjet_email(self).deliver_now
  # end



  #const pour :format des Product
  #FORMAT = %w{png gif jpg}


end
