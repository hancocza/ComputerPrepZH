class Computer < ApplicationRecord
  has_many :assignments, dependent: :delete_all
  has_many :labs, :through => :assignments
  
  validates :name, :description, :department, :barcode, presence: true
end
