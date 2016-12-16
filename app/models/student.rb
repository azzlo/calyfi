class Student < ApplicationRecord
  belongs_to :degree
  belongs_to :specialty
end
