class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :agility
      t.integer :strength
      t.integer :technical
      t.integer :risk
      t.integer :brawling
      t.integer :durability
      t.integer :body_helper_id
      t.integer :body_opp_id
      t.integer :injure
      t.integer :move_type_id
      t.integer :control_start_pos_id
      t.integer :opp_start_pos_id
      t.integer :control_success_pos_id
      t.integer :opp_success_pos_id
      t.string :control_fail_pos_id
      t.integer :opp_fail_pos_id
      t.integer :daze
      t.text :special

      t.timestamps
    end
  end
end
