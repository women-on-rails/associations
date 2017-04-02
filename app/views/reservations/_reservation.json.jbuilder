json.extract! reservation, :id, :total_price_value, :total_price_currency, :date_of_arrival, :date_of_departure, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
