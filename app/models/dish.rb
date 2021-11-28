class Dish < ApplicationRecord
  # Direct associations

  has_many   :cuisines,
             dependent: :destroy

  has_many   :venues,
             dependent: :destroy

  belongs_to :user

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    dish_type
  end
end
