class CreateMoveTypes < ActiveRecord::Migration
  def change
    create_table :move_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
