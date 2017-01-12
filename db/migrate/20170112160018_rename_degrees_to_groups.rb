class RenameDegreesToGroups < ActiveRecord::Migration[5.0]
  def change
    rename_table :degrees, :groups
  end
end
