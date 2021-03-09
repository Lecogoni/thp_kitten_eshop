class Order < ApplicationRecord
  belongs_to :cart, dependent: :destroy
end
