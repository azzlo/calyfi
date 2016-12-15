class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :last_name
      t.string :mothers_last_name
      t.text :perfil
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
