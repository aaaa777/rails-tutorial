json.extract! user, :id, :nameLstring, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
