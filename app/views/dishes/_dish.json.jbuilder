json.extract! dish, :id, :dish_type, :user_id, :dish_name, :cuisine, :created_at, :updated_at
json.url dish_url(dish, format: :json)
