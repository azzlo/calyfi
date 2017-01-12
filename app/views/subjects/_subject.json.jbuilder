json.extract! subject, :id, :name, :code, :semester, :curriculum_id, :teacher_id, :dependency_subject_id, :created_at, :updated_at
json.url subject_url(subject, format: :json)