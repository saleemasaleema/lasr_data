json.extract! student, :id, :S_name, :Gender, :Address, :created_at, :updated_at
json.url student_url(student, format: :json)