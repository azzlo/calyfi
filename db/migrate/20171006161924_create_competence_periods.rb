class CreateCompetencePeriods < ActiveRecord::Migration[5.0]
  def change
    create_table :competence_periods do |t|
      t.date :start_at
      t.date :end_at
      t.string :title
      t.string :description
      t.references :teacher_group, foreign_key: true

      t.timestamps
    end
  end
end
