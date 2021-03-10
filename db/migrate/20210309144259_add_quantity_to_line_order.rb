class AddQuantityToLineOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :line_orders, :quantity, :integer
  end
end
