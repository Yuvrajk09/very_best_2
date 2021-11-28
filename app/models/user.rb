class User < ApplicationRecord
  # Direct associations

  has_many   :favorite_dishes,
             :class_name => "Dish",
             :dependent => :destroy

  # Indirect associations

  has_many   :venues,
             :through => :favorite_dishes,
             :source => :venues

  # Validations

  # Scopes

  def to_s
    dish_type
  end

end
