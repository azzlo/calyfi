class TeacherGroup < ApplicationRecord
  belongs_to :teacher
  belongs_to :group
  has_many :competence_periods
end
