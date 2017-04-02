json.extract! room, :id, :floor, :number, :name, :price_value, :price_currency, :description, :created_at, :updated_at
json.url room_url(room, format: :json)
