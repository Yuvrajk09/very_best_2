class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :dish_type, :string
  attribute :user_email, :string
  attribute :name, :string

  # Direct associations

  has_many   :favorite_dishes,
             resource: DishResource

  # Indirect associations

  has_many :venues do
    assign_each do |user, venues|
      venues.select do |v|
        v.id.in?(user.venues.map(&:id))
      end
    end
  end
end
