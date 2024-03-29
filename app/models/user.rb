class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #ユーザーとルームの関係
  has_many :room_users
  has_many :rooms, through: :room_users
  #ユーザーとメッセージの関係
  has_many :messages

  validates :name, presence: true
end
