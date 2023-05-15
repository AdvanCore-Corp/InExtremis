class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.references :gym, null: false, foreign_key: true
      t.string :name
      t.string :lastname_one
      t.string :lastname_two
      t.integer :type_document
      t.string :num_document
      t.date :date_birth
      t.date :date_entry
      t.string :email

      t.timestamps
    end
  end
end
