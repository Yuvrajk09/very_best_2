class VenueResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :dish_id, :integer
  attribute :venue_name, :string

  # Direct associations

  belongs_to :famous_dish,
             resource: DishResource,
             foreign_key: :dish_id

  # Indirect associations

  has_one    :user

  filter :user_id, :integer do
    eq do |scope, value|
      scope.eager_load(:user).where(dishes: { user_id: value })
    end
  end
end
