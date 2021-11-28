class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :dish_type, :string
  attribute :user_email, :string
  attribute :name, :string

  # Direct associations

  # Indirect associations

end