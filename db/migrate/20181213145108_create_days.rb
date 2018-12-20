class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.string :total_calory
      t.string :breakfast
      t.string :lunch
      t.string :dinner
      t.string :date

      t.timestamps
    end
  end
end
