class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :model
      t.string :photo
      t.integer :power
      t.integer :weight
      t.integer :price
      t.integer :price_two
      t.text :description

      t.timestamps
    end
  end
end
