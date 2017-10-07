class Score < ApplicationRecord
  belongs_to :competence
  belongs_to :student
end
