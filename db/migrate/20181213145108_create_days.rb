class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.float :total_calory
      t.string :date

      t.timestamps
    end
  end
end
