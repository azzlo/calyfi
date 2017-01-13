class AddCurriculumAndStudyCycleToStudent < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :curriculum, foreign_key: true
    add_reference :students, :study_cycle, foreign_key: true
  end
end
