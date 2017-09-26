class AddFieldsToGroup < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :specialty, :string
    add_column :groups, :generation, :string
    add_column :groups, :semester, :integer
    add_column :groups, :letter, :string
  end
end
