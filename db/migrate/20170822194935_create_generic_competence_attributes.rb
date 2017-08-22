class CreateGenericCompetenceAttributes < ActiveRecord::Migration[5.0]
  def change
    create_table :generic_competence_attributes do |t|
      t.integer :number
      t.text :description
      t.references :generic_competence, foreign_key: true

      t.timestamps
    end
  end
end
