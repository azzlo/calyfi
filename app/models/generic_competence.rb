class GenericCompetence < ApplicationRecord
  belongs_to :competition_category
  has_many :generic_competence_attributes
end
