class StudyCycle < ApplicationRecord

  def aux_name
    "#{self.start_at.year} | #{self.start_at.strftime("%B")} - #{self.end_at.strftime("%B")}"
  end
end
