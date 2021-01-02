class RemoveIconFromMoves < ActiveRecord::Migration[6.0]
  def change
    remove_column :moves, :icon, :string
  end
end
