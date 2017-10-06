class Competence < ApplicationRecord
  belongs_to :generic_competence_attribute
  belongs_to :competence_period
end
