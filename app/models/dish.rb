class Dish < ApplicationRecord
  # Direct associations

  belongs_to :user

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    dish_type
  end

end
