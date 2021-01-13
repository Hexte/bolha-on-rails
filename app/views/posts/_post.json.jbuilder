json.extract! post, :id, :title, :description, :price, :created_at, :updated_at
json.url post_url(post, format: :json)
