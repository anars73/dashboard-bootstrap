class Company < ApplicationRecord
  has_many :employees, dependent: :destroy
  has_many :products
  validates :name, :description, presence: true
end
