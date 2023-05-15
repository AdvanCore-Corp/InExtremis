class Person < ApplicationRecord
  belongs_to :gym
  has_many :type_users
  has_many :clients, through: :type_users
  has_many :employees, through: :type_users
end
