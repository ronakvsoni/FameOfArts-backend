class Artgallary < ApplicationRecord
  has_many :images, dependent: :nullify
  has_many :comments, through: :images
  has_many :user_artgallaries, dependent: :destroy
  has_many :users, through: :user_artgallaries

  accepts_nested_attributes_for :user_artgallaries
end
