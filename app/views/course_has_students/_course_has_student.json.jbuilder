json.extract! course_has_student, :id, :status, :course_id, :student_id, :created_at, :updated_at
json.url course_has_student_url(course_has_student, format: :json)
