json.extract! post, :id, :title, :ingredients, :user_id, :vegetarian, :vegan, :cuisine, :gluten_free, :takeaway, :created_at, :updated_at
json.url post_url(post, format: :json)
