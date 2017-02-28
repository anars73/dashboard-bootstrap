class Company < ApplicationRecord
  has_many :employees, dependent: :destroy
  validates :name, :description, presence: true
end
