class AddIconToMoves < ActiveRecord::Migration[6.0]
  def change
    add_column :moves, :icon, :string
  end
end
