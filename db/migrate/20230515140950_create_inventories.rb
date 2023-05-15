class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.references :type_inventory, null: false, foreign_key: true
      t.integer :type_machine
      t.string :muscle_group
      t.date :date_purchase
      t.decimal :cost

      t.timestamps
    end
  end
end
