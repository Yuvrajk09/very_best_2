class CreateCuisines < ActiveRecord::Migration[6.0]
  def change
    create_table :cuisines do |t|
      t.string :name
      t.integer :dish_id

      t.timestamps
    end
  end
end
