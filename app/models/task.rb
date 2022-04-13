class Task < ApplicationRecord
  ETAT = [ "En cours", "Fait" ]

  belongs_to :project
  belongs_to :user
  has_many :commentaires
  validates :name, presence: true
  validates :description, presence: true
  validates :estimate_time, presence: true

  def estimate_cost
    estimate_time * tjm
  end

  def real_cost
    real_time * tjm
  end
end
