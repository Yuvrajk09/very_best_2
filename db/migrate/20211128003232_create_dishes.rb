class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :dish_type
      t.integer :user_id
      t.string :dish_name
      t.string :cuisine

      t.timestamps
    end
  end
end
