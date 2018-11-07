class Employee < ApplicationRecord

  validates :first_name, presence:true
  validates :last_name, presence:true
  validates :title, presence:true
  validates :department, presence:true
  validates :location, presence:true
end
