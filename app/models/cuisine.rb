class Cuisine < ApplicationRecord
  # Direct associations

  belongs_to :dish

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
