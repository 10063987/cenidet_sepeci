json.extract! course, :id, :course_name, :institution_name, :course_location, :start_date, :end_date, :course_type, :evidence, :message_id, :created_at, :updated_at
json.url course_url(course, format: :json)
