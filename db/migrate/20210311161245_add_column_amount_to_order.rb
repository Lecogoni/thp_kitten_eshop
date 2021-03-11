class AddColumnAmountToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :amount, :decimal, default: 123.45
  end
end
