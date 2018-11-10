class Employee < ApplicationRecord
  has_secure_password
  
  validates :name, presence:true
  validates :username, presence:true
  # validates :password, presence:true
  
  validates :title, presence:true
  validates :department, presence:true
  validates :location, presence:true
end
