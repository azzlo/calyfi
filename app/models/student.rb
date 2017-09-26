class Student < ApplicationRecord
  belongs_to :group
  belongs_to :curriculum
  belongs_to :study_cycle

  validates :enrollment, presence: true
  validates :name, presence: true
  validates :curriculum, presence: true
  validates :study_cycle, presence: true

  after_save :create_curriculum

  def full_name
  	self.name + ' ' + self.last_name + ' ' + self.mothers_last_name
  end

  private
  
    def create_curriculum
      self.curriculum.subjects.each do |subject|
        
      end
    end

end
