json.extract! cart, :id, :user_id, :product_id, :quantity, :time, :total, :created_at, :updated_at
json.url cart_url(cart, format: :json)
