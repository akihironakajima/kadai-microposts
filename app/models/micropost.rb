class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :like_users, through: :favorites, source: :user, dependent: :destroy

  validates :content, presence: true, length: { maximum: 255 }
  
end