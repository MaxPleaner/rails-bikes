json.extract! bike, :id, :title, :price, :description, :status, :created_at, :updated_at
json.url bike_url(bike, format: :json)