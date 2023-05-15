class CreateTypeUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :type_users do |t|
      t.references :person, null: false, foreign_key: true
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
