class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :food_name
      t.string :day_id
      t.float :calory
      t.string :meal

      t.timestamps
    end
  end
end
