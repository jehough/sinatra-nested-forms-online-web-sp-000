class ChangeShips < ActiveRecord::Migration[5.2]
  def change
    rename_column :ships, :type, :category
  end
end
