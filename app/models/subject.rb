class Subject < ApplicationRecord
  belongs_to :curriculum
  belongs_to :teacher
  belongs_to :dependency_subject, :class_name => 'Subject', :foreign_key => 'dependency_subject_id', optional: true
end
