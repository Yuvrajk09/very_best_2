class User < ApplicationRecord
  # Direct associations

  has_many   :favorite_dishes,
             :class_name => "Dish",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    dish_type
  end

end
