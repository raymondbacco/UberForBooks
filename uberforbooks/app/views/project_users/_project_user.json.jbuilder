json.extract! project_user, :id, :name, :owns_id, :rented_id, :created_at, :updated_at
json.url project_user_url(project_user, format: :json)
