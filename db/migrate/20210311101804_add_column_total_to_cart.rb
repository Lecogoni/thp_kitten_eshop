class AddColumnTotalToCart < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :total_price, :decimal, default: 0
  end
end
