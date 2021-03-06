class User < ApplicationRecord
  ROLE = [ "junior","graphiste", "développer"]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true, uniqueness: true
  validates :last_name, presence: true, uniqueness: true
  validates :email, format:{ with: URI::MailTo::EMAIL_REGEXP }
  belongs_to :role
  has_many :tasks
  has_many :daysoffs
  has_many :commentaires
end
