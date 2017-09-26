class Group < ApplicationRecord
  has_many :students

  def full_name
    (self.semester.to_s || '') + (self.letter || '') + ' ' + (self.specialty || '')
  end
end
