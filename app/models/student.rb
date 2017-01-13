class Student < ApplicationRecord
  belongs_to :group
  belongs_to :curriculum
  belongs_to :study_cycle

  validates :enrollment, presence: true
  validates :name, presence: true
  validates :curriculum, presence: true
  validates :study_cycle, presence: true
end
