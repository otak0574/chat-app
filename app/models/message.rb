class Message < ApplicationRecord
  #メッセージとユーザーの関係
  belongs_to :user
  #メッセージとルームの関係
  belongs_to :room
  has_one_attached :image
  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
