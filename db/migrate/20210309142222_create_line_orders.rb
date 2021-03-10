class CreateLineOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :line_orders do |t|
      t.belongs_to :order, foreign_key: true
      t.belongs_to :product, foreign_key: true
      t.timestamps
    end
  end
end
