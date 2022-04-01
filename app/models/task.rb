class Task < ApplicationRecord
  ETAT = [ "In progress", "Approved", "In Review" ]

  belongs_to :project
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :estimate_time, presence: true, numericality: { only_integer: true }
  validates :status, presence: true, inclusion: { in: ETAT }

  def estimate_cost
    estimate_time * tjm
  end
  def real_cost
    real_time * tjm
  end
end
