class Course < ApplicationRecord
  has_many :labs, dependent: :delete_all
  
  validates :name, :department, :description, :sections, presence: true
  validates :sections, numericality: {greater_than_or_equal_to: 0}
end
