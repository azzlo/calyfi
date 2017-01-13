class StudentSubject < ApplicationRecord
  belongs_to :student
  belongs_to :subject
  belongs_to :study_cycle
end
