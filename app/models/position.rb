class Position < ActiveRecord::Base
  has_many :control_start_pos_moves, class_name: Move, foreign_key: :control_start_pos_id
  has_many :opp_start_pos_moves, class_name: Move, foreign_key: :opp_start_pos_id
  has_many :control_success_pos_moves, class_name: Move, foreign_key: :control_success_pos_id
  has_many :opp_success_pos_moves, class_name: Move, foreign_key: :opp_success_pos_id
  has_many :control_fail_pos_moves, class_name: Move, foreign_key: :control_fail_pos_id
  has_many :opp_success_pos_moves, class_name: Move, foreign_key: :opp_fail_pos_id
end
