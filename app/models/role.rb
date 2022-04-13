class Role < ApplicationRecord
  has_many :users

  validates :level, presence: true
end
