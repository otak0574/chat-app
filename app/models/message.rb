class Message < ApplicationRecord
  #メッセージとユーザーの関係
  belongs_to :user
  #メッセージとルームの関係
  belongs_to :room
end
