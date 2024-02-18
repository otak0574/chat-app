class Room < ApplicationRecord
  #ルームとユーザーの関係
  has_many :room_users, dependent: :destroy
  #ユーザーとルームの関係
  has_many :users, through: :room_users #throughオプション
  #ルームとメッセージの関係
  has_many :messages, dependent: :destroy

  #バリデーションの記述
  validates :name, presence: true
end
