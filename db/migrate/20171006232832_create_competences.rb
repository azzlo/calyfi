class CreateCompetences < ActiveRecord::Migration[5.0]
  def change
    create_table :competences do |t|
      t.string :evidence
      t.string :evaluation_tool
      t.references :generic_competence_attribute, foreign_key: true
      t.string :percentage
      t.references :competence_period, foreign_key: true

      t.timestamps
    end
  end
end
