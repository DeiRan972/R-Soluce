class Task < ApplicationRecord
  belongs_to :project
  validates :name, presence: true
  validates :description, presence: true
  validates :status, presence: true
  validates :estimate_time, presence: true, numericality: { only_integer: true }
end
