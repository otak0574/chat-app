class Room < ApplicationRecord
  #ルームとユーザーの関係
  has_many :room_users
  #ユーザーとルームの関係
  has_many :users, through: :room_users #throughオプション
  #ルームとメッセージの関係
  has_many :messages

  #バリデーションの記述
  validates :name, presence: true
end
