json.extract! post, :id, :title, :description, :completed_at, :created_at, :updated_at
json.url post_url(post, format: :json)
