class Teacher < ApplicationRecord
  belongs_to :user
  has_many :teacher_groups
  accepts_nested_attributes_for :user

  def full_name
    name + ' ' + last_name + ' ' + mothers_last_name
  end
end
