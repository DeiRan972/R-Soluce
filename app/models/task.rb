class Task < ApplicationRecord
  belongs_to :project
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :estimate_time, presence: true, numericality: { only_integer: true }

  def estimate_cost
    estimate_time * tjm
  end
  def real_cost
    real_time * tjm
  end
end
