class CreateTaxes < ActiveRecord::Migration[7.0]
  def change
    create_table :taxes do |t|
      t.string :name
      t.string :description
      t.decimal :value

      t.timestamps
    end
  end
end
