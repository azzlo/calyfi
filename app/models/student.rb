class Student < ApplicationRecord
  belongs_to :degree
  belongs_to :specialty

  validates :enrollment, presence: true
  validates :name, presence: true
end
