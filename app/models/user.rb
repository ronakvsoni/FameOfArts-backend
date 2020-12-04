class User < ApplicationRecord
  has_many :comments, :dependent => :destroy
  has_many :images, :dependent => :destroy
  has_many :user_artgallaries, :dependent => :destroy
  has_many :artgallaries, through: :user_artgallaries

  validates :username, uniqueness: true
  validates :username, presence: true
end
