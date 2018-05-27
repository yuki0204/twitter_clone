class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  has_one_attached :avatar
  has_many :tweets, dependent: :destroy
end
