json.extract! beer, :id, :city_id, :name, :style, :rating, :created_at, :updated_at
json.url beer_url(beer, format: :json)
