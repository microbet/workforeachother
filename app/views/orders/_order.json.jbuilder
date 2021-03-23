json.extract! order, :id, :title, :body, :user_id, :created_at, :updated_at, :category_id, :estimate
json.url order_url(order, format: :json)
