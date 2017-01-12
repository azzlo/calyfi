class Curriculum < ApplicationRecord
  belongs_to :specialty
  belongs_to :study_cycle
  has_many :subjects
end
