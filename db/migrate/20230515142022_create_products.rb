class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :product_id, polymorphic: true, null: false
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
