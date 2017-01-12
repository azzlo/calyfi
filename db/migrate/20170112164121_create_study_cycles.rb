class CreateStudyCycles < ActiveRecord::Migration[5.0]
  def change
    create_table :study_cycles do |t|
      t.date :start_at
      t.date :end_at

      t.timestamps
    end
  end
end
