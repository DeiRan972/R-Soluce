class Daysoff < ApplicationRecord
  belongs_to :user
  validates :kindof, presence: true
end
