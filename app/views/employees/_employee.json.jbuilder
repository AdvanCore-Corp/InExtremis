json.extract! employee, :id, :type_user_id, :position, :description, :created_at, :updated_at
json.url employee_url(employee, format: :json)
