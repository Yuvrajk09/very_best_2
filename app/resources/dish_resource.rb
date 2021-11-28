class DishResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :dish_type, :string
  attribute :user_id, :integer
  attribute :dish_name, :string
  attribute :cuisine, :string

  # Direct associations

  # Indirect associations

end
