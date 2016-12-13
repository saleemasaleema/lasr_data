json.extract! course, :id, :Title, :Price, :C_number, :created_at, :updated_at
json.url course_url(course, format: :json)