class Day < ApplicationRecord
  has_many :schedules
  has_many :users, through: :schedules

  has_many :foods

  def format_json
    {
      foods: self.foods,
      id: self.id,
      date: self.date,
      total_calory: self.total_calory
    }
  end

end
