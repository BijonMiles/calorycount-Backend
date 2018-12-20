class User < ApplicationRecord


  has_many :schedules
  has_many :days, through: :schedules


  has_secure_password
  # attr: password, password_confirmation
end
