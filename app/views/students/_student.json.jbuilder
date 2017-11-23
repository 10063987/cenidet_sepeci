json.extract! student, :id, :name, :last_name, :mlast_name, :phone, :email, :grade, :admission_date, :exit_date, :research_line_id, :user_id, :created_at, :updated_at
json.url student_url(student, format: :json)
