class CreateCurriculums < ActiveRecord::Migration[5.0]
  def change
    create_table :curriculums do |t|
      t.string :name
      t.references :specialty, foreign_key: true
      t.references :study_cycle, foreign_key: true

      t.timestamps
    end
  end
end
