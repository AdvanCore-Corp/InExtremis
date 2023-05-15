class TypeUser < ApplicationRecord
  belongs_to :person
  has_many :clients
  has_many :employees
end
