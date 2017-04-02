json.extract! hostel, :id, :name, :image_url, :description, :created_at, :updated_at
json.url hostel_url(hostel, format: :json)
