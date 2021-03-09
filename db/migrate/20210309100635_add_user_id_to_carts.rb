class AddUserIdToCarts < ActiveRecord::Migration[6.1]
  def change
    t.belongs_to :cart, index: true
  end
end
