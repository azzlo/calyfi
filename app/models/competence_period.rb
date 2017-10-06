class CompetencePeriod < ApplicationRecord
  belongs_to :teacher_group

  def full_name
    start_at.day.to_s + ' ' + \
    I18n.l(start_at, format: '%B') + ' - ' + \
    end_at.day.to_s + ' ' + \
    I18n.l(end_at, format: '%B')
  end
end