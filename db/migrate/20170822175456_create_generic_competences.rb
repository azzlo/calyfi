class CreateGenericCompetences < ActiveRecord::Migration[5.0]
  def change
    create_table :generic_competences do |t|
      t.integer :number
      t.string :name
      t.references :competition_category, foreign_key: true

      t.timestamps
    end
  end
end
