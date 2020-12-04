class Image < ApplicationRecord
  belongs_to :user
  belongs_to :artgallary
  has_many :comments, dependent: :destroy
end
