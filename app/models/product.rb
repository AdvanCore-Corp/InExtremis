class Product < ApplicationRecord
  belongs_to :product_id, polymorphic: true
end
