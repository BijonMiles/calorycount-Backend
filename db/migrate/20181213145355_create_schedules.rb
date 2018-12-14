class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :user_id
      t.string :day_id

      t.timestamps
    end
  end
end
