class AddSemesterAndIsGraduatedToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :semester, :integer
    add_column :students, :is_graduated, :boolean
  end
end
