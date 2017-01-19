json.extract! competence, :id, :name, :percentage, :teacher_id, :subject_id, :created_at, :updated_at
json.url competence_url(competence, format: :json)