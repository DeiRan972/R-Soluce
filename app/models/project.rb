class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks, through: :users
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

end
