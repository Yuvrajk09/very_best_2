class AddFamousDishReferenceToVenues < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :venues, :dishes
    add_index :venues, :dish_id
    change_column_null :venues, :dish_id, false
  end
end
