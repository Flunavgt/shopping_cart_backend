class CreateOperations < ActiveRecord::Migration[7.0]
  def change
    create_table :operations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.string :type_of_operation
      t.integer :units
      t.datetime :start_date 
      t.datetime :end_date

      t.timestamps
    end
  end
end
