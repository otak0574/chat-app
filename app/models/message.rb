class Message < ApplicationRecord
  #メッセージとユーザーの関係
  belongs_to :user
  #メッセージとルームの関係
  belongs_to :room
  has_one_attached :image
  validates :content, presence: true
end
