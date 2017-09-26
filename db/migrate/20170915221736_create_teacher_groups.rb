class CreateTeacherGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :teacher_groups do |t|
      t.references :teacher, foreign_key: true
      t.references :group, foreign_key: true
      t.string :subject
      t.string :period

      t.timestamps
    end
  end
end
