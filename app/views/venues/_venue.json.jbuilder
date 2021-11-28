json.extract! venue, :id, :dish_id, :venue_name, :created_at, :updated_at
json.url venue_url(venue, format: :json)
