class TypeInventory < ApplicationRecord
  belongs_to :gym
  has_many :inventories
end
