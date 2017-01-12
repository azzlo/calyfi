class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :code
      t.integer :semester
      t.references :curriculum, foreign_key: true
      t.references :teacher, foreign_key: true
      t.integer :dependency_subject_id

      t.timestamps
    end
  end
end
