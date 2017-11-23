json.extract! congress_memory, :id, :memory_title, :start_page, :end_page, :year, :evidence, :message_id, :created_at, :updated_at
json.url congress_memory_url(congress_memory, format: :json)
