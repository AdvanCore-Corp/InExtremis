json.extract! person, :id, :gym_id, :name, :lastname_one, :lastname_two, :type_document, :num_document, :date_birth, :date_entry, :email, :created_at, :updated_at
json.url person_url(person, format: :json)
