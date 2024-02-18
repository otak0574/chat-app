class Room < ApplicationRecord
  #複数のルームは複数のユーザーに紐づけられる
  has_many :room_users
  has_many :users, through: :room_users #throughオプション
end
