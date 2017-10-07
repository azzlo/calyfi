class Competence < ApplicationRecord
  belongs_to :generic_competence_attribute
  belongs_to :competence_period
  has_many :scores
  accepts_nested_attributes_for :scores, allow_destroy: true

  after_create :generate_scores

  def generate_scores
    self.competence_period.teacher_group.group.students.each do |student|
      self.scores.build(score: 0, student_id: student.id)
      # Score.create(score: 0, student_id: student.id, competence: self.id)
    end
    self.save
  end
end
