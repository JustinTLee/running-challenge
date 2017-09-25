class RunRecord < ApplicationRecord
  belongs_to :user
  
  validates :difficulty, inclusion: { in: 1..10 }, numericality: { only_integer: true }
  validates_each :date do |record, attr, value|
    record.errors.add(attr, 'date must be before today or today') if value > Date.today
  end
end
