json.extract! user, :id, :dish_type, :user_email, :name, :created_at,
              :updated_at
json.url user_url(user, format: :json)
