class Post < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_one_attached :image
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorited_by, through: :favorites, source: :user
  
  validates :title, presence: true
  validates :image, presence: true
end
