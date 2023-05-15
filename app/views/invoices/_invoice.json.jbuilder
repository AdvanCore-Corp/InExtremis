json.extract! invoice, :id, :invoice_id_id, :invoice_id_type, :amount, :date, :details, :type, :value, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
