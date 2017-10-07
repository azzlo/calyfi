class Student < ApplicationRecord
  belongs_to :group

  validates :enrollment, presence: true
  validates :name, presence: true

  def full_name
  	self.name + ' ' + self.last_name + ' ' + self.mothers_last_name
  end
end
