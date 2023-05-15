class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.references :invoice_id, polymorphic: true, null: false
      t.integer :amount
      t.datetime :date
      t.string :details
      t.integer :type
      t.decimal :value

      t.timestamps
    end
  end
end
