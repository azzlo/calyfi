class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :enrollment
      t.string :name
      t.string :last_name
      t.string :mothers_last_name
      t.string :address
      t.string :suburb
      t.string :city
      t.string :state
      t.string :postal_code
      t.date :birthdate
      t.string :sex
      t.references :degree, foreign_key: true
      t.references :specialty, foreign_key: true

      t.timestamps
    end
  end
end
