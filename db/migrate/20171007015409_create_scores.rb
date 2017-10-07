class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.string :score
      t.references :competence, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
