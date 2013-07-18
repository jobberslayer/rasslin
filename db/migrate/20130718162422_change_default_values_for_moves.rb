class ChangeDefaultValuesForMoves < ActiveRecord::Migration
  def change
    change_column :moves, :agility, :integer, default: 0
    change_column :moves, :strength, :integer, default: 0
    change_column :moves, :technical, :integer, default: 0
    change_column :moves, :risk, :integer, default: 0
    change_column :moves, :brawling, :integer, default: 0
    change_column :moves, :durability, :integer, default: 0
    change_column :moves, :daze, :integer, default: 0
    change_column :moves, :injure, :integer, default: 0
    change_column :moves, :target, :integer, default: 0
  end
end
