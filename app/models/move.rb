class Move < ActiveRecord::Base
  belongs_to :move_type, class_name: MoveType
  belongs_to :body_helper, class_name: BodyPart
  belongs_to :body_opp, class_name: BodyPart
  belongs_to :control_start_pos, class_name: Position
  belongs_to :opp_start_pos, class_name: Position
  belongs_to :control_success_pos, class_name: Position
  belongs_to :opp_success_pos, class_name: Position
  belongs_to :control_fail_pos, class_name: Position
  belongs_to :opp_fail_pos, class_name: Position
end
