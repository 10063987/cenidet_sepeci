json.extract! message, :id, :title, :congress, :comment, :teacher_id, :student_id, :created_at, :updated_at
json.url message_url(message, format: :json)
