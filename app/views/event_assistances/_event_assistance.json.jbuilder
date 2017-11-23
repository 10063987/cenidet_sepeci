json.extract! event_assistance, :id, :name, :event_location, :start_date, :end_date, :course_type, :participation_type, :event_type, :evidence, :message_id, :created_at, :updated_at
json.url event_assistance_url(event_assistance, format: :json)
