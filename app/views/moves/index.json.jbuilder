json.array!(@moves) do |move|
  json.extract! move, :name, :agility, :strength, :technical, :risk, :brawling, :durability, :body_helper_id, :body_opp_id, :injure, :move_type_id, :control_start_pos_id, :opp_start_pos_id, :control_success_pos_id, :opp_success_pos_id, :control_fail_pos_id, :opp_fail_pos_id, :daze, :special
  json.url move_url(move, format: :json)
end
