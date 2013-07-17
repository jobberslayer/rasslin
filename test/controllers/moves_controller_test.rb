require 'test_helper'

class MovesControllerTest < ActionController::TestCase
  setup do
    @move = moves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create move" do
    assert_difference('Move.count') do
      post :create, move: { agility: @move.agility, body_helper_id: @move.body_helper_id, body_opp_id: @move.body_opp_id, brawling: @move.brawling, control_fail_pos_id: @move.control_fail_pos_id, control_start_pos_id: @move.control_start_pos_id, control_success_pos_id: @move.control_success_pos_id, daze: @move.daze, durability: @move.durability, injure: @move.injure, move_type_id: @move.move_type_id, name: @move.name, opp_fail_pos_id: @move.opp_fail_pos_id, opp_start_pos_id: @move.opp_start_pos_id, opp_success_pos_id: @move.opp_success_pos_id, risk: @move.risk, special: @move.special, strength: @move.strength, technical: @move.technical }
    end

    assert_redirected_to move_path(assigns(:move))
  end

  test "should show move" do
    get :show, id: @move
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @move
    assert_response :success
  end

  test "should update move" do
    patch :update, id: @move, move: { agility: @move.agility, body_helper_id: @move.body_helper_id, body_opp_id: @move.body_opp_id, brawling: @move.brawling, control_fail_pos_id: @move.control_fail_pos_id, control_start_pos_id: @move.control_start_pos_id, control_success_pos_id: @move.control_success_pos_id, daze: @move.daze, durability: @move.durability, injure: @move.injure, move_type_id: @move.move_type_id, name: @move.name, opp_fail_pos_id: @move.opp_fail_pos_id, opp_start_pos_id: @move.opp_start_pos_id, opp_success_pos_id: @move.opp_success_pos_id, risk: @move.risk, special: @move.special, strength: @move.strength, technical: @move.technical }
    assert_redirected_to move_path(assigns(:move))
  end

  test "should destroy move" do
    assert_difference('Move.count', -1) do
      delete :destroy, id: @move
    end

    assert_redirected_to moves_path
  end
end
