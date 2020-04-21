class Lab < ApplicationRecord
  belongs_to :course
  has_many :assignments, dependent: :delete_all
  has_many :computers, :through => :assignments
  
  validates :name, :number, :startDate, :endDate, presence: true
  validates :number, numericality: {greater_than: 0, less_than: 17}
#   validates :end_after_start
  
  private
  def end_after_start
    return if endDate.blank? || startDate.blank?
    
    if endDate < startDate
      errors.add(:endDate, "must be after the start date")
    end
  end
end
