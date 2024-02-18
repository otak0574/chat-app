class RoomUser < ApplicationRecord
  #ある１つのルームとある一人のユーザーの組み合わせは１つ
  belongs_to :room
  #ある一人のユーザーとある１つのルームの組み合わせは１つ
  belongs_to :user
end
