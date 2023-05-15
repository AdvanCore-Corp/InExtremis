class Client < ApplicationRecord
  belongs_to :client_id, polymorphic: true
end
