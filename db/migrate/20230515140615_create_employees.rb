class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.references :type_user, null: false, foreign_key: true
      t.string :position
      t.string :description

      t.timestamps
    end
  end
end
