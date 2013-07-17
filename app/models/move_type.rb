class MoveType < ActiveRecord::Base
  has_many :moves, class_name: Move, foreign_key: :move_type_id
end
