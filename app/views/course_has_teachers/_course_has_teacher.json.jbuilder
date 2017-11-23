json.extract! course_has_teacher, :id, :status, :course_id, :teacher_id, :created_at, :updated_at
json.url course_has_teacher_url(course_has_teacher, format: :json)
