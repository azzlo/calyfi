class RemoveSpecialtyFromStudent < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :specialty_id
  end
end
