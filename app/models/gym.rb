class Gym < ApplicationRecord
    has_many :people
    has_many :type_inventories
    has_many :plans
    has_many :clients, through: :person, source: :clients
    has_many :employees, through: :person, source: :employees
end
