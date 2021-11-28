class AddDishReferenceToCuisines < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :cuisines, :dishes
    add_index :cuisines, :dish_id
    change_column_null :cuisines, :dish_id, false
  end
end
