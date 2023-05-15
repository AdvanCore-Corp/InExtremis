class CreateTypeInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :type_inventories do |t|
      t.references :gym, null: false, foreign_key: true
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
