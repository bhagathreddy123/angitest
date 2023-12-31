class Employee < ApplicationRecord
  validates :name, :email, :contact, :address, presence: true
  validates :email, uniqueness: true
end
