class ChangeDegreeIdToGroupIdInStudentTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :students, :degree_id, :group_id
  end
end
