class UserArtgallary < ApplicationRecord
  belongs_to :user
  belongs_to :artgallary

  validates :user, uniqueness: { scope: :artgallary }
end
