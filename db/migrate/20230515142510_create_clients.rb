class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.references :client_id, polymorphic: true, null: false
      t.integer :weight
      t.integer :height

      t.timestamps
    end
  end
end
