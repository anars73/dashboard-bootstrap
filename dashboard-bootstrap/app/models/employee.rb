class Employee < ApplicationRecord
  belongs_to :company, required: false
  validates :first_name, :last_name, presence: true
end