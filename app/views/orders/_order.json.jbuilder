json.extract! order, :id, :cart_id, :address, :description, :created_at, :updated_at
json.url order_url(order, format: :json)
