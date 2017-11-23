json.extract! pub_chapter, :id, :isbn, :chapter_title, :publisher, :edition_number, :chapter_number, :start_page, :end_page, :evidence, :message_id, :created_at, :updated_at
json.url pub_chapter_url(pub_chapter, format: :json)
