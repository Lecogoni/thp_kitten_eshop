class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 5, scale: 2, default: 0
      t.text :format

      t.timestamps
    end
  end
end
