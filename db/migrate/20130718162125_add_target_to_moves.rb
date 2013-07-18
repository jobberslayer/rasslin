class AddTargetToMoves < ActiveRecord::Migration
  def change
    add_column :moves, :target, :integer
  end
end
