class Venue < ApplicationRecord
  # Direct associations

  belongs_to :famous_dish,
             class_name: "Dish",
             foreign_key: "dish_id"

  # Indirect associations

  has_one    :user,
             through: :famous_dish,
             source: :user

  # Validations

  # Scopes

  def to_s
    famous_dish.to_s
  end
end
