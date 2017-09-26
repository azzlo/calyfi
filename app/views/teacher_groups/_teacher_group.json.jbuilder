json.extract! teacher_group, :id, :teacher_id, :group_id, :subject, :period, :created_at, :updated_at
json.url teacher_group_url(teacher_group, format: :json)