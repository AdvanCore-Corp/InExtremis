class Invoice < ApplicationRecord
  belongs_to :invoice_id, polymorphic: true
end
