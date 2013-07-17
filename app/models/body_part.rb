class BodyPart < ActiveRecord::Base
  has_many :helps_moves, class_name: Move, foreign_key: :body_helper_id
  has_many :affected_by_moves, class_name: Move, foreign_key: :body_opp_id
end
