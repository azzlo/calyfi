class Subject < ApplicationRecord
  belongs_to :curriculum
  belongs_to :teacher
  has_one :dependency_subject, :class_name => 'Subject', :foreign_key => 'dependency_subject_id'
end
