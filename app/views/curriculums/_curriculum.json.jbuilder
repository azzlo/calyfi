json.extract! curriculum, :id, :name, :specialty_id, :study_cycle_id, :created_at, :updated_at
json.url curriculum_url(curriculum, format: :json)