class GenericCompetenceAttribute < ApplicationRecord
  belongs_to :generic_competence

  def code
    self.generic_competence.number.to_s + '.' + number.to_s
  end
end
